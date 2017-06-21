.class public Lcom/vk/attachpicker/photoview/PhotoView;
.super Landroid/widget/ImageView;
.source "PhotoView.java"

# interfaces
.implements Lcom/vk/attachpicker/photoview/IPhotoView;


# instance fields
.field private mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

.field private mPendingScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vk/attachpicker/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vk/attachpicker/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 45
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoView;->init()V

    .line 46
    return-void
.end method


# virtual methods
.method public canZoom()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->canZoom()Z

    move-result v0

    return v0
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getDisplayMatrix(Landroid/graphics/Matrix;)V

    .line 95
    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getIPhotoViewImplementation()Lcom/vk/attachpicker/photoview/IPhotoView;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoView;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMaximumScale()F
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMidScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoView;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMinScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoView;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getOnPhotoTapListener()Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnPhotoTapListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getOnPhotoTapListener()Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnViewTapListener()Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnViewTapListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getOnViewTapListener()Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnViewTapListener;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getVisibleRectangleBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    new-instance v0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-direct {v0, p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    .line 57
    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoView;->init()V

    .line 313
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 314
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->cleanup()V

    .line 307
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 308
    return-void
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setAllowParentInterceptOnEdge(Z)V

    .line 148
    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 1
    .param p1, "finalRectangle"    # Landroid/graphics/Matrix;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setDisplayMatrix(Landroid/graphics/Matrix;)Z

    move-result v0

    return v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->update()V

    .line 195
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->update()V

    .line 203
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 208
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->update()V

    .line 211
    :cond_0
    return-void
.end method

.method public setMaxScale(F)V
    .locals 0
    .param p1, "maxScale"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/photoview/PhotoView;->setMaximumScale(F)V

    .line 176
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1
    .param p1, "maximumScale"    # F

    .prologue
    .line 180
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    .line 181
    return-void
.end method

.method public setMediumScale(F)V
    .locals 1
    .param p1, "mediumScale"    # F

    .prologue
    .line 169
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setMediumScale(F)V

    .line 170
    return-void
.end method

.method public setMidScale(F)V
    .locals 0
    .param p1, "midScale"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/photoview/PhotoView;->setMediumScale(F)V

    .line 165
    return-void
.end method

.method public setMinScale(F)V
    .locals 0
    .param p1, "minScale"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/photoview/PhotoView;->setMinimumScale(F)V

    .line 154
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1
    .param p1, "minimumScale"    # F

    .prologue
    .line 158
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setMinimumScale(F)V

    .line 159
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1
    .param p1, "newOnDoubleTapListener"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 292
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 221
    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setOnMatrixChangeListener(Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    .line 216
    return-void
.end method

.method public setOnPhotoTapListener(Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    .line 226
    return-void
.end method

.method public setOnScaleChangeListener(Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnScaleChangeListener;)V
    .locals 1
    .param p1, "onScaleChangeListener"    # Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnScaleChangeListener;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setOnScaleChangeListener(Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnScaleChangeListener;)V

    .line 297
    return-void
.end method

.method public setOnSingleFlingListener(Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnSingleFlingListener;)V
    .locals 1
    .param p1, "onSingleFlingListener"    # Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnSingleFlingListener;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setOnSingleFlingListener(Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnSingleFlingListener;)V

    .line 302
    return-void
.end method

.method public setOnViewTapListener(Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnViewTapListener;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setOnViewTapListener(Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnViewTapListener;)V

    .line 237
    return-void
.end method

.method public setPhotoViewRotation(F)V
    .locals 1
    .param p1, "rotationDegree"    # F

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setRotationTo(F)V

    .line 65
    return-void
.end method

.method public setRotationBy(F)V
    .locals 1
    .param p1, "rotationDegree"    # F

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setRotationBy(F)V

    .line 75
    return-void
.end method

.method public setRotationTo(F)V
    .locals 1
    .param p1, "rotationDegree"    # F

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setRotationTo(F)V

    .line 70
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 247
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setScale(F)V

    .line 248
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "focalX"    # F
    .param p3, "focalY"    # F
    .param p4, "animate"    # Z

    .prologue
    .line 257
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 258
    return-void
.end method

.method public setScale(FZ)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "animate"    # Z

    .prologue
    .line 252
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setScale(FZ)V

    .line 253
    return-void
.end method

.method public setScaleLevels(FFF)V
    .locals 1
    .param p1, "minimumScale"    # F
    .param p2, "mediumScale"    # F
    .param p3, "maximumScale"    # F

    .prologue
    .line 185
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setScaleLevels(FFF)V

    .line 186
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    iput-object p1, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    goto :goto_0
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1
    .param p1, "milliseconds"    # I

    .prologue
    .line 281
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setZoomTransitionDuration(I)V

    .line 282
    return-void
.end method

.method public setZoomable(Z)V
    .locals 1
    .param p1, "zoomable"    # Z

    .prologue
    .line 271
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoView;->mAttacher:Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setZoomable(Z)V

    .line 272
    return-void
.end method
