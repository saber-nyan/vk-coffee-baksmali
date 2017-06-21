.class public Lcom/vk/attachpicker/photoview/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Lcom/vk/attachpicker/photoview/IPhotoView;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/vk/attachpicker/photoview/gestures/OnGestureListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/photoview/PhotoViewAttacher$FlingRunnable;,
        Lcom/vk/attachpicker/photoview/PhotoViewAttacher$AnimatedZoomRunnable;,
        Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnSingleFlingListener;,
        Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnViewTapListener;,
        Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnPhotoTapListener;,
        Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnScaleChangeListener;,
        Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnMatrixChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final EDGE_BOTH:I = 0x2

.field static final EDGE_LEFT:I = 0x0

.field static final EDGE_NONE:I = -0x1

.field static final EDGE_RIGHT:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PhotoViewAttacher"

.field static SINGLE_TOUCH:I


# instance fields
.field ZOOM_DURATION:I

.field private mAllowParentInterceptOnEdge:Z

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mBaseRotation:F

.field private mBlockParentIntercept:Z

.field private mCurrentFlingRunnable:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIvBottom:I

.field private mIvLeft:I

.field private mIvRight:I

.field private mIvTop:I

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrixChangeListener:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnMatrixChangedListener;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mPhotoTapListener:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnPhotoTapListener;

.field private mScaleChangeListener:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnScaleChangeListener;

.field private mScaleDragDetector:Lcom/vk/attachpicker/photoview/gestures/GestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mScrollEdge:I

.field private mSingleFlingListener:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnSingleFlingListener;

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private mViewTapListener:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnViewTapListener;

.field private mZoomEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-string/jumbo v0, "PhotoViewAttacher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->DEBUG:Z

    .line 68
    const/4 v0, 0x1

    sput v0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->SINGLE_TOUCH:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 158
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;Z)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "zoomable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 61
    const/16 v1, 0xc8

    iput v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->ZOOM_DURATION:I

    .line 70
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMinScale:F

    .line 71
    const/high16 v1, 0x3fe00000    # 1.75f

    iput v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMidScale:F

    .line 72
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 74
    iput-boolean v2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    .line 135
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 136
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 137
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 138
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 139
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMatrixValues:[F

    .line 151
    const/4 v1, 0x2

    iput v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 155
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 162
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    .line 164
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 165
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 168
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 172
    :cond_0
    invoke-static {p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 174
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 178
    invoke-static {v1, p0}, Lcom/vk/attachpicker/photoview/gestures/VersionedGestureDetector;->newInstance(Landroid/content/Context;Lcom/vk/attachpicker/photoview/gestures/OnGestureListener;)Lcom/vk/attachpicker/photoview/gestures/GestureDetector;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/vk/attachpicker/photoview/gestures/GestureDetector;

    .line 181
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$1;

    invoke-direct {v3, p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$1;-><init>(Lcom/vk/attachpicker/photoview/PhotoViewAttacher;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 211
    iget-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v2, Lcom/vk/attachpicker/photoview/DefaultOnDoubleTapListener;

    invoke-direct {v2, p0}, Lcom/vk/attachpicker/photoview/DefaultOnDoubleTapListener;-><init>(Lcom/vk/attachpicker/photoview/PhotoViewAttacher;)V

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 212
    const/4 v1, 0x0

    iput v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mBaseRotation:F

    .line 215
    invoke-virtual {p0, p2}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setZoomable(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/photoview/PhotoViewAttacher;)Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnSingleFlingListener;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mSingleFlingListener:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnSingleFlingListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vk/attachpicker/photoview/PhotoViewAttacher;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/vk/attachpicker/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vk/attachpicker/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)V
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/photoview/PhotoViewAttacher;
    .param p1, "x1"    # Landroid/graphics/Matrix;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private cancelFling()V
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$FlingRunnable;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$FlingRunnable;->cancelFling()V

    .line 784
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$FlingRunnable;

    .line 786
    :cond_0
    return-void
.end method

.method private checkAndDisplayMatrix()V
    .locals 1

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 795
    :cond_0
    return-void
.end method

.method private checkImageViewScaleType()V
    .locals 3

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 804
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/vk/attachpicker/photoview/IPhotoView;

    if-nez v1, :cond_0

    .line 805
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 806
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "The ImageView\'s ScaleType has been changed since attaching a PhotoViewAttacher. You should call setScaleType on the PhotoViewAttacher instead of on the ImageView"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 810
    :cond_0
    return-void
.end method

.method private checkMatrixBounds()Z
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 813
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    .line 814
    .local v3, "imageView":Landroid/widget/ImageView;
    if-nez v3, :cond_1

    .line 871
    :cond_0
    :goto_0
    return v8

    .line 818
    :cond_1
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v4

    .line 819
    .local v4, "rect":Landroid/graphics/RectF;
    if-eqz v4, :cond_0

    .line 823
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .local v2, "height":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 824
    .local v7, "width":F
    const/4 v0, 0x0

    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 826
    .local v1, "deltaY":F
    invoke-direct {p0, v3}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v5

    .line 827
    .local v5, "viewHeight":I
    int-to-float v10, v5

    cmpg-float v10, v2, v10

    if-gtz v10, :cond_3

    .line 828
    sget-object v10, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v11, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 836
    int-to-float v10, v5

    sub-float/2addr v10, v2

    div-float/2addr v10, v13

    iget v11, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v10, v11

    .line 845
    :cond_2
    :goto_1
    invoke-direct {p0, v3}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v6

    .line 846
    .local v6, "viewWidth":I
    int-to-float v10, v6

    cmpg-float v10, v7, v10

    if-gtz v10, :cond_5

    .line 847
    sget-object v8, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v10, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v10

    aget v8, v8, v10

    packed-switch v8, :pswitch_data_1

    .line 855
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v13

    iget v10, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v10

    .line 858
    :goto_2
    const/4 v8, 0x2

    iput v8, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 870
    :goto_3
    iget-object v8, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move v8, v9

    .line 871
    goto :goto_0

    .line 830
    .end local v6    # "viewWidth":I
    :pswitch_0
    iget v10, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v10

    .line 831
    goto :goto_1

    .line 833
    :pswitch_1
    int-to-float v10, v5

    sub-float/2addr v10, v2

    iget v11, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v10, v11

    .line 834
    goto :goto_1

    .line 839
    :cond_3
    iget v10, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_4

    .line 840
    iget v10, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v10

    goto :goto_1

    .line 841
    :cond_4
    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v11, v5

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    .line 842
    int-to-float v10, v5

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v10, v11

    goto :goto_1

    .line 849
    .restart local v6    # "viewWidth":I
    :pswitch_2
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    .line 850
    goto :goto_2

    .line 852
    :pswitch_3
    int-to-float v8, v6

    sub-float/2addr v8, v7

    iget v10, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v10

    .line 853
    goto :goto_2

    .line 859
    :cond_5
    iget v10, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_6

    .line 860
    iput v8, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 861
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_3

    .line 862
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v10, v6

    cmpg-float v8, v8, v10

    if-gez v8, :cond_7

    .line 863
    int-to-float v8, v6

    iget v10, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v10

    .line 864
    iput v9, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScrollEdge:I

    goto :goto_3

    .line 866
    :cond_7
    const/4 v8, -0x1

    iput v8, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScrollEdge:I

    goto :goto_3

    .line 828
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 847
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static checkZoomLevels(FFF)V
    .locals 2
    .param p0, "minZoom"    # F
    .param p1, "midZoom"    # F
    .param p2, "maxZoom"    # F

    .prologue
    .line 79
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Minimum zoom has to be less than Medium zoom. Call setMinimumZoom() with a more appropriate value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Medium zoom has to be less than Maximum zoom. Call setMaximumZoom() with a more appropriate value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    return-void
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 6
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v5, 0x0

    .line 881
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 883
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 884
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 885
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 886
    iget-object v2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    .line 887
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    .line 886
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 888
    iget-object v2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 889
    iget-object v2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 892
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getImageViewHeight(Landroid/widget/ImageView;)I
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 1029
    if-nez p1, :cond_0

    .line 1030
    const/4 v0, 0x0

    .line 1031
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getImageViewWidth(Landroid/widget/ImageView;)I
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 1023
    if-nez p1, :cond_0

    .line 1024
    const/4 v0, 0x0

    .line 1025
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 920
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 921
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method private static hasDrawable(Landroid/widget/ImageView;)Z
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 92
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z
    .locals 3
    .param p0, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 99
    if-nez p0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    .line 103
    :cond_0
    sget-object v0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 109
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not supported in PhotoView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private resetMatrix()V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 929
    iget v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mBaseRotation:F

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setRotationBy(F)V

    .line 930
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 931
    invoke-direct {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 932
    return-void
.end method

.method private setImageViewMatrix(Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 935
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 936
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 938
    invoke-direct {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->checkImageViewScaleType()V

    .line 939
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 942
    iget-object v2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    if-eqz v2, :cond_0

    .line 943
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 944
    .local v0, "displayRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 945
    iget-object v2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    invoke-interface {v2, v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    .line 949
    .end local v0    # "displayRect":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method private static setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V
    .locals 2
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 121
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/vk/attachpicker/photoview/IPhotoView;

    if-nez v0, :cond_0

    .line 122
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 126
    :cond_0
    return-void
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .locals 14
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/4 v12, 0x0

    .line 957
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    .line 958
    .local v3, "imageView":Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    invoke-direct {p0, v3}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v10

    int-to-float v8, v10

    .line 963
    .local v8, "viewWidth":F
    invoke-direct {p0, v3}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v10

    int-to-float v7, v10

    .line 964
    .local v7, "viewHeight":F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 965
    .local v1, "drawableWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 967
    .local v0, "drawableHeight":I
    iget-object v10, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 969
    int-to-float v10, v1

    div-float v9, v8, v10

    .line 970
    .local v9, "widthScale":F
    int-to-float v10, v0

    div-float v2, v7, v10

    .line 972
    .local v2, "heightScale":F
    iget-object v10, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_2

    .line 973
    iget-object v10, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v1

    sub-float v11, v8, v11

    div-float/2addr v11, v13

    int-to-float v12, v0

    sub-float v12, v7, v12

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1019
    :goto_1
    invoke-direct {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->resetMatrix()V

    goto :goto_0

    .line 976
    :cond_2
    iget-object v10, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_3

    .line 977
    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 978
    .local v6, "scale":F
    iget-object v10, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 979
    iget-object v10, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v1

    mul-float/2addr v11, v6

    sub-float v11, v8, v11

    div-float/2addr v11, v13

    int-to-float v12, v0

    mul-float/2addr v12, v6

    sub-float v12, v7, v12

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 982
    .end local v6    # "scale":F
    :cond_3
    iget-object v10, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_4

    .line 983
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 984
    .restart local v6    # "scale":F
    iget-object v10, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 985
    iget-object v10, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v1

    mul-float/2addr v11, v6

    sub-float v11, v8, v11

    div-float/2addr v11, v13

    int-to-float v12, v0

    mul-float/2addr v12, v6

    sub-float v12, v7, v12

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 989
    .end local v6    # "scale":F
    :cond_4
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v10, v1

    int-to-float v11, v0

    invoke-direct {v5, v12, v12, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 990
    .local v5, "mTempSrc":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v12, v12, v8, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 992
    .local v4, "mTempDst":Landroid/graphics/RectF;
    iget v10, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mBaseRotation:F

    float-to-int v10, v10

    rem-int/lit16 v10, v10, 0xb4

    if-eqz v10, :cond_5

    .line 993
    new-instance v5, Landroid/graphics/RectF;

    .end local v5    # "mTempSrc":Landroid/graphics/RectF;
    int-to-float v10, v0

    int-to-float v11, v1

    invoke-direct {v5, v12, v12, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 996
    .restart local v5    # "mTempSrc":Landroid/graphics/RectF;
    :cond_5
    sget-object v10, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v11, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    goto :goto_1

    .line 1003
    :pswitch_0
    iget-object v10, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 998
    :pswitch_1
    iget-object v10, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 999
    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 1007
    :pswitch_2
    iget-object v10, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_1

    .line 1011
    :pswitch_3
    iget-object v10, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_1

    .line 996
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public canZoom()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    return v0
.end method

.method public cleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 250
    iget-object v2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    .line 281
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 256
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 259
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 264
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 267
    invoke-direct {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->cancelFling()V

    .line 270
    .end local v1    # "observer":Landroid/view/ViewTreeObserver;
    :cond_2
    iget-object v2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_3

    .line 271
    iget-object v2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 275
    :cond_3
    iput-object v3, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .line 276
    iput-object v3, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .line 277
    iput-object v3, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnViewTapListener;

    .line 280
    iput-object v3, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 751
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getDisplayMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 761
    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 286
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getDrawMatrix()Landroid/graphics/Matrix;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 776
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 777
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 778
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getIPhotoViewImplementation()Lcom/vk/attachpicker/photoview/IPhotoView;
    .locals 0

    .prologue
    .line 909
    return-object p0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 4

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 342
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imageView":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 347
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    if-nez v0, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->cleanup()V

    .line 349
    invoke-static {}, Lcom/vk/attachpicker/photoview/log/LogManager;->getLogger()Lcom/vk/attachpicker/photoview/log/Logger;

    move-result-object v1

    const-string/jumbo v2, "PhotoViewAttacher"

    const-string/jumbo v3, "ImageView no longer exists. You should not use this PhotoViewAttacher any more."

    invoke-interface {v1, v2, v3}, Lcom/vk/attachpicker/photoview/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_1
    return-object v0
.end method

.method public getMaxScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMaximumScale()F
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMaxScale:F

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMidScale:F

    return v0
.end method

.method public getMidScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMinScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMinScale:F

    return v0
.end method

.method public getOnPhotoTapListener()Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnPhotoTapListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnPhotoTapListener;

    return-object v0
.end method

.method public getOnViewTapListener()Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnViewTapListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 659
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnViewTapListener;

    return-object v0
.end method

.method public getScale()F
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 391
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getSuppMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 767
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 768
    return-void
.end method

.method public getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 897
    .local v0, "imageView":Landroid/widget/ImageView;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public onDrag(FF)V
    .locals 10
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 401
    iget-object v2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/vk/attachpicker/photoview/gestures/GestureDetector;

    invoke-interface {v2}, Lcom/vk/attachpicker/photoview/gestures/GestureDetector;->isScaling()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    sget-boolean v2, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 406
    invoke-static {}, Lcom/vk/attachpicker/photoview/log/LogManager;->getLogger()Lcom/vk/attachpicker/photoview/log/Logger;

    move-result-object v2

    const-string/jumbo v3, "PhotoViewAttacher"

    const-string/jumbo v4, "onDrag: dx: %.2f. dy: %.2f"

    new-array v5, v9, [Ljava/lang/Object;

    .line 407
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 406
    invoke-interface {v2, v3, v4}, Lcom/vk/attachpicker/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_2
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 411
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 412
    invoke-direct {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 423
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 424
    .local v1, "parent":Landroid/view/ViewParent;
    iget-boolean v2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/vk/attachpicker/photoview/gestures/GestureDetector;

    invoke-interface {v2}, Lcom/vk/attachpicker/photoview/gestures/GestureDetector;->isScaling()Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    if-nez v2, :cond_5

    .line 425
    iget v2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScrollEdge:I

    if-eq v2, v9, :cond_4

    iget v2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScrollEdge:I

    if-nez v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-gez v2, :cond_4

    :cond_3
    iget v2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScrollEdge:I

    if-ne v2, v7, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 428
    :cond_4
    if-eqz v1, :cond_0

    .line 429
    invoke-interface {v1, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 433
    :cond_5
    if-eqz v1, :cond_0

    .line 434
    invoke-interface {v1, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public onFling(FFFF)V
    .locals 6
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 442
    sget-boolean v1, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 443
    invoke-static {}, Lcom/vk/attachpicker/photoview/log/LogManager;->getLogger()Lcom/vk/attachpicker/photoview/log/Logger;

    move-result-object v1

    const-string/jumbo v2, "PhotoViewAttacher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onFling. sX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " sY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Vx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Vy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/vk/attachpicker/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 449
    .local v0, "imageView":Landroid/widget/ImageView;
    new-instance v1, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$FlingRunnable;-><init>(Lcom/vk/attachpicker/photoview/PhotoViewAttacher;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$FlingRunnable;

    .line 450
    iget-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-direct {p0, v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    .line 451
    invoke-direct {p0, v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v3

    float-to-int v4, p3

    float-to-int v5, p4

    .line 450
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$FlingRunnable;->fling(IIII)V

    .line 452
    iget-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 453
    return-void
.end method

.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 459
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 460
    iget-boolean v5, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v5, :cond_2

    .line 461
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    .line 462
    .local v4, "top":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    .line 463
    .local v3, "right":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    .line 464
    .local v0, "bottom":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    .line 473
    .local v2, "left":I
    iget v5, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mIvTop:I

    if-ne v4, v5, :cond_0

    iget v5, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mIvBottom:I

    if-ne v0, v5, :cond_0

    iget v5, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mIvLeft:I

    if-ne v2, v5, :cond_0

    iget v5, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mIvRight:I

    if-eq v3, v5, :cond_1

    .line 476
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 479
    iput v4, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mIvTop:I

    .line 480
    iput v3, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mIvRight:I

    .line 481
    iput v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mIvBottom:I

    .line 482
    iput v2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mIvLeft:I

    .line 488
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    :cond_1
    :goto_0
    return-void

    .line 485
    :cond_2
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onScale(FFF)V
    .locals 6
    .param p1, "scaleFactor"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F

    .prologue
    .line 492
    sget-boolean v0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 493
    invoke-static {}, Lcom/vk/attachpicker/photoview/log/LogManager;->getLogger()Lcom/vk/attachpicker/photoview/log/Logger;

    move-result-object v0

    const-string/jumbo v1, "PhotoViewAttacher"

    const-string/jumbo v2, "onScale: scale: %.2f. fX: %.2f. fY: %.2f"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 496
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    .line 495
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 493
    invoke-interface {v0, v1, v2}, Lcom/vk/attachpicker/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleChangeListener:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnScaleChangeListener;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleChangeListener:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnScaleChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnScaleChangeListener;->onScaleChange(FFF)V

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 503
    invoke-direct {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 504
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v10

    check-cast v10, Lcom/vk/attachpicker/widget/ImageViewerImageView;

    .line 510
    .local v10, "iv":Lcom/vk/attachpicker/widget/ImageViewerImageView;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->getPosition()I

    move-result v1

    invoke-virtual {v10}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->getCurrentPositionInImageViewer()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 511
    const/4 v9, 0x0

    .line 578
    :cond_0
    :goto_0
    return v9

    .line 514
    :cond_1
    const/4 v9, 0x0

    .line 516
    .local v9, "handled":Z
    iget-boolean v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v1, :cond_0

    move-object/from16 v1, p1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .line 518
    .local v11, "parent":Landroid/view/ViewParent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 559
    :cond_2
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/vk/attachpicker/photoview/gestures/GestureDetector;

    if-eqz v1, :cond_3

    .line 560
    iget-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/vk/attachpicker/photoview/gestures/GestureDetector;

    invoke-interface {v1}, Lcom/vk/attachpicker/photoview/gestures/GestureDetector;->isScaling()Z

    move-result v14

    .line 561
    .local v14, "wasScaling":Z
    iget-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/vk/attachpicker/photoview/gestures/GestureDetector;

    invoke-interface {v1}, Lcom/vk/attachpicker/photoview/gestures/GestureDetector;->isDragging()Z

    move-result v13

    .line 563
    .local v13, "wasDragging":Z
    iget-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/vk/attachpicker/photoview/gestures/GestureDetector;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Lcom/vk/attachpicker/photoview/gestures/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 565
    if-nez v14, :cond_6

    iget-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/vk/attachpicker/photoview/gestures/GestureDetector;

    invoke-interface {v1}, Lcom/vk/attachpicker/photoview/gestures/GestureDetector;->isScaling()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v8, 0x1

    .line 566
    .local v8, "didntScale":Z
    :goto_2
    if-nez v13, :cond_7

    iget-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/vk/attachpicker/photoview/gestures/GestureDetector;

    invoke-interface {v1}, Lcom/vk/attachpicker/photoview/gestures/GestureDetector;->isDragging()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v7, 0x1

    .line 568
    .local v7, "didntDrag":Z
    :goto_3
    if-eqz v8, :cond_8

    if-eqz v7, :cond_8

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    .line 572
    .end local v7    # "didntDrag":Z
    .end local v8    # "didntScale":Z
    .end local v13    # "wasDragging":Z
    .end local v14    # "wasScaling":Z
    :cond_3
    iget-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    const/4 v9, 0x1

    goto :goto_0

    .line 522
    :pswitch_1
    if-eqz v11, :cond_4

    .line 523
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 530
    :goto_5
    invoke-direct {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->cancelFling()V

    goto :goto_1

    .line 525
    :cond_4
    invoke-static {}, Lcom/vk/attachpicker/photoview/log/LogManager;->getLogger()Lcom/vk/attachpicker/photoview/log/Logger;

    move-result-object v1

    const-string/jumbo v2, "PhotoViewAttacher"

    const-string/jumbo v3, "onTouch getParent() returned null"

    invoke-interface {v1, v2, v3}, Lcom/vk/attachpicker/photoview/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 537
    :pswitch_2
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    iget v2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 538
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v12

    .line 539
    .local v12, "rect":Landroid/graphics/RectF;
    if-eqz v12, :cond_2

    .line 540
    new-instance v1, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getScale()F

    move-result v3

    iget v4, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMinScale:F

    .line 541
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/vk/attachpicker/photoview/PhotoViewAttacher;FFFF)V

    .line 540
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 542
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 547
    .end local v12    # "rect":Landroid/graphics/RectF;
    :cond_5
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    iget v2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 548
    if-eqz v10, :cond_2

    .line 549
    new-instance v1, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getScale()F

    move-result v3

    iget v4, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 550
    invoke-virtual {v10}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->getRight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v5, v2

    .line 551
    invoke-virtual {v10}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->getBottom()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v6, v2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/vk/attachpicker/photoview/PhotoViewAttacher;FFFF)V

    .line 549
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 552
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 565
    .restart local v13    # "wasDragging":Z
    .restart local v14    # "wasScaling":Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 566
    .restart local v8    # "didntScale":Z
    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 568
    .restart local v7    # "didntDrag":Z
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 518
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 583
    iput-boolean p1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 584
    return-void
.end method

.method public setBaseRotation(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 312
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v0, p1, v0

    iput v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mBaseRotation:F

    .line 313
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->update()V

    .line 314
    iget v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mBaseRotation:F

    invoke-virtual {p0, v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setRotationBy(F)V

    .line 315
    invoke-direct {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 316
    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 3
    .param p1, "finalMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    .line 291
    if-nez p1, :cond_0

    .line 292
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Matrix cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 296
    .local v0, "imageView":Landroid/widget/ImageView;
    if-nez v0, :cond_2

    .line 308
    :cond_1
    :goto_0
    return v1

    .line 300
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 304
    iget-object v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 305
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 306
    invoke-direct {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 308
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setMaxScale(F)V
    .locals 0
    .param p1, "maxScale"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 613
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    .line 614
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 2
    .param p1, "maximumScale"    # F

    .prologue
    .line 618
    iget v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMidScale:F

    invoke-static {v0, v1, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 619
    iput p1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 620
    return-void
.end method

.method public setMediumScale(F)V
    .locals 2
    .param p1, "mediumScale"    # F

    .prologue
    .line 606
    iget v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {v0, p1, v1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 607
    iput p1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMidScale:F

    .line 608
    return-void
.end method

.method public setMidScale(F)V
    .locals 0
    .param p1, "midScale"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 601
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setMediumScale(F)V

    .line 602
    return-void
.end method

.method public setMinScale(F)V
    .locals 0
    .param p1, "minScale"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setMinimumScale(F)V

    .line 590
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 2
    .param p1, "minimumScale"    # F

    .prologue
    .line 594
    iget v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMidScale:F

    iget v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {p1, v0, v1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 595
    iput p1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMinScale:F

    .line 596
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 2
    .param p1, "newOnDoubleTapListener"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    .prologue
    .line 220
    if-eqz p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Lcom/vk/attachpicker/photoview/DefaultOnDoubleTapListener;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/photoview/DefaultOnDoubleTapListener;-><init>(Lcom/vk/attachpicker/photoview/PhotoViewAttacher;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_0
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 632
    iput-object p1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 633
    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .line 638
    return-void
.end method

.method public setOnPhotoTapListener(Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .line 643
    return-void
.end method

.method public setOnScaleChangeListener(Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnScaleChangeListener;)V
    .locals 0
    .param p1, "onScaleChangeListener"    # Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnScaleChangeListener;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleChangeListener:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnScaleChangeListener;

    .line 230
    return-void
.end method

.method public setOnSingleFlingListener(Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnSingleFlingListener;)V
    .locals 0
    .param p1, "onSingleFlingListener"    # Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnSingleFlingListener;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mSingleFlingListener:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnSingleFlingListener;

    .line 235
    return-void
.end method

.method public setOnViewTapListener(Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnViewTapListener;

    .prologue
    .line 653
    iput-object p1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/vk/attachpicker/photoview/PhotoViewAttacher$OnViewTapListener;

    .line 654
    return-void
.end method

.method public setPhotoViewRotation(F)V
    .locals 2
    .param p1, "degrees"    # F

    .prologue
    .line 323
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 324
    invoke-direct {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 325
    return-void
.end method

.method public setRotationBy(F)V
    .locals 2
    .param p1, "degrees"    # F

    .prologue
    .line 335
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 336
    invoke-direct {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 337
    return-void
.end method

.method public setRotationTo(F)V
    .locals 2
    .param p1, "degrees"    # F

    .prologue
    .line 329
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 330
    invoke-direct {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 331
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 664
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setScale(FZ)V

    .line 665
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 7
    .param p1, "scale"    # F
    .param p2, "focalX"    # F
    .param p3, "focalY"    # F
    .param p4, "animate"    # Z

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    .line 684
    .local v6, "imageView":Landroid/widget/ImageView;
    if-eqz v6, :cond_1

    .line 686
    iget v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 688
    :cond_0
    invoke-static {}, Lcom/vk/attachpicker/photoview/log/LogManager;->getLogger()Lcom/vk/attachpicker/photoview/log/Logger;

    move-result-object v0

    const-string/jumbo v1, "PhotoViewAttacher"

    const-string/jumbo v2, "Scale must be within the range of minScale and maxScale"

    .line 689
    invoke-interface {v0, v1, v2}, Lcom/vk/attachpicker/photoview/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_1
    :goto_0
    return-void

    .line 694
    :cond_2
    if-eqz p4, :cond_3

    .line 695
    new-instance v0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/vk/attachpicker/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 698
    :cond_3
    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 699
    invoke-direct {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    goto :goto_0
.end method

.method public setScale(FZ)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "animate"    # Z

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 671
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 674
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 672
    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 677
    :cond_0
    return-void
.end method

.method public setScaleLevels(FFF)V
    .locals 0
    .param p1, "minimumScale"    # F
    .param p2, "mediumScale"    # F
    .param p3, "maximumScale"    # F

    .prologue
    .line 624
    invoke-static {p1, p2, p3}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 625
    iput p1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMinScale:F

    .line 626
    iput p2, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMidScale:F

    .line 627
    iput p3, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 628
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 714
    invoke-static {p1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 715
    iput-object p1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 718
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->update()V

    .line 720
    :cond_0
    return-void
.end method

.method public setZoomInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 710
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 0
    .param p1, "milliseconds"    # I

    .prologue
    .line 902
    if-gez p1, :cond_0

    .line 903
    const/16 p1, 0xc8

    .line 904
    :cond_0
    iput p1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->ZOOM_DURATION:I

    .line 905
    return-void
.end method

.method public setZoomable(Z)V
    .locals 0
    .param p1, "zoomable"    # Z

    .prologue
    .line 724
    iput-boolean p1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 725
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->update()V

    .line 726
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 731
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 732
    iget-boolean v1, p0, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v1, :cond_1

    .line 734
    invoke-static {v0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 737
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    invoke-direct {p0}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->resetMatrix()V

    goto :goto_0
.end method
