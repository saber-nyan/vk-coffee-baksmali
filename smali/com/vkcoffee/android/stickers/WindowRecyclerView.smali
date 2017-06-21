.class public Lcom/vkcoffee/android/stickers/WindowRecyclerView;
.super Lme/grishka/appkit/views/UsableRecyclerView;
.source "WindowRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;
    }
.end annotation


# instance fields
.field private mCurrentUrl:Ljava/lang/String;

.field private mHandledLongTap:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImage:Landroid/widget/ImageView;

.field private mKeyboardTop:I

.field private mLastAnimatedItemView:Landroid/view/View;

.field private mLastRect:Landroid/graphics/Rect;

.field private final mOnLongPressed:Ljava/lang/Runnable;

.field private final mPopupShower:Ljava/lang/Runnable;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleAnimation:Landroid/animation/ObjectAnimator;

.field private mStartEvent:Landroid/view/MotionEvent;

.field private mStartX:I

.field private mStartY:I

.field private mTouchSlop:I

.field private mViewToUrlProjection:Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;

.field private mWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lme/grishka/appkit/views/UsableRecyclerView;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/vkcoffee/android/stickers/WindowRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView$1;-><init>(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mOnLongPressed:Ljava/lang/Runnable;

    .line 69
    new-instance v0, Lcom/vkcoffee/android/stickers/WindowRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView$2;-><init>(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mPopupShower:Ljava/lang/Runnable;

    .line 87
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->init(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lme/grishka/appkit/views/UsableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/vkcoffee/android/stickers/WindowRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView$1;-><init>(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mOnLongPressed:Ljava/lang/Runnable;

    .line 69
    new-instance v0, Lcom/vkcoffee/android/stickers/WindowRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView$2;-><init>(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)V

    iput-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mPopupShower:Ljava/lang/Runnable;

    .line 92
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->init(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->prepare()V

    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    .prologue
    .line 42
    iget v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mStartX:I

    return v0
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    .prologue
    .line 42
    iget v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mStartY:I

    return v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/stickers/WindowRecyclerView;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/WindowRecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->handleTouchEvent(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/vkcoffee/android/stickers/WindowRecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/WindowRecyclerView;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mHandledLongTap:Z

    return p1
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mStartEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/stickers/WindowRecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/WindowRecyclerView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->sendMotionToParent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->show()V

    return-void
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/stickers/WindowRecyclerView;

    .prologue
    .line 42
    iget v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mKeyboardTop:I

    return v0
.end method

.method private animateItemView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v1, 0x3f666666    # 0.9f

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 270
    return-void
.end method

.method private cancelItemView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 263
    if-eqz p1, :cond_0

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 266
    :cond_0
    return-void
.end method

.method private cancelPopup()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x46

    const v1, 0x3e99999a    # 0.3f

    .line 226
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 227
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView$$Lambda$1;->lambdaFactory$(Landroid/widget/PopupWindow;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mLastAnimatedItemView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->cancelItemView(Landroid/view/View;)V

    .line 229
    return-void
.end method

.method private handlePopupMove(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v0, v2

    .line 237
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v1, v2

    .line 238
    .local v1, "y":I
    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->handleTouchEvent(II)Z

    .line 239
    return-void
.end method

.method private handleTouchEvent(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 242
    iget-object v5, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mLastRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {v5, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 243
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mRects:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 244
    iget-object v5, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mRects:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 245
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 246
    iput-object v2, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mLastRect:Landroid/graphics/Rect;

    .line 247
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 248
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mViewToUrlProjection:Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;

    invoke-interface {v5, v4}, Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;->getURL(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mViewToUrlProjection:Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;

    invoke-interface {v5, v4}, Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;->getLocalPath(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "persistentPath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 251
    iget-object v5, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mLastAnimatedItemView:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->cancelItemView(Landroid/view/View;)V

    .line 252
    invoke-direct {p0, v3, v1}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->loadSticker(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iput-object v4, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mLastAnimatedItemView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->animateItemView(Landroid/view/View;)V

    .line 254
    const/4 v5, 0x1

    .line 259
    .end local v0    # "i":I
    .end local v1    # "persistentPath":Ljava/lang/String;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "view":Landroid/view/View;
    :goto_1
    return v5

    .line 243
    .restart local v0    # "i":I
    .restart local v2    # "rect":Landroid/graphics/Rect;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "i":I
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v4, -0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 104
    invoke-virtual {p0, v8}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->setFocusableInTouchMode(Z)V

    .line 106
    new-instance v0, Lcom/vkcoffee/android/stickers/WindowRecyclerView$3;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/stickers/WindowRecyclerView$3;-><init>(Lcom/vkcoffee/android/stickers/WindowRecyclerView;Landroid/content/Context;)V

    .line 139
    .local v0, "popupView":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 140
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 141
    const/high16 v1, 0x77000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 142
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mTouchSlop:I

    .line 144
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mImage:Landroid/widget/ImageView;

    .line 145
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mProgress:Landroid/widget/ProgressBar;

    .line 146
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 147
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mProgress:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mImage:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lcom/vkcoffee/android/stickers/StickersConfig;->PREVIEW_SIZE:I

    sget v4, Lcom/vkcoffee/android/stickers/StickersConfig;->PREVIEW_SIZE:I

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v7, v7, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mWindow:Landroid/widget/PopupWindow;

    .line 157
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 158
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mImage:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v3, "scaleX"

    new-array v4, v9, [F

    fill-array-data v4, :array_0

    .line 159
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v6

    const-string/jumbo v3, "scaleY"

    new-array v4, v9, [F

    fill-array-data v4, :array_1

    .line 160
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v8

    .line 158
    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 161
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 162
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mProgress:Landroid/widget/ProgressBar;

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 150
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mProgress:Landroid/widget/ProgressBar;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 158
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8a3d71    # 1.08f
        0x3f800000    # 1.0f
    .end array-data

    .line 159
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8a3d71    # 1.08f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private loadSticker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "persistentPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 273
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mCurrentUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mCurrentUrl:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    new-instance v0, Lcom/vkcoffee/android/stickers/WindowRecyclerView$4;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView$4;-><init>(Lcom/vkcoffee/android/stickers/WindowRecyclerView;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mCurrentUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2, v3}, Lme/grishka/appkit/imageloader/ViewImageLoader;->load(Lme/grishka/appkit/imageloader/ViewImageLoader$Target;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 302
    :cond_0
    return-void
.end method

.method private prepare()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 169
    iput-object v5, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mLastRect:Landroid/graphics/Rect;

    .line 170
    iput-object v5, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mCurrentUrl:Ljava/lang/String;

    .line 171
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mImage:Landroid/widget/ImageView;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 173
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 174
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 175
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 177
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 178
    .local v2, "location":[I
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->getChildCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mRects:Ljava/util/List;

    .line 179
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 180
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 181
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 183
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 184
    const/4 v4, 0x0

    aget v4, v2, v4

    aget v5, v2, v7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 185
    iget-object v4, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mRects:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private sendMotionToParent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 232
    invoke-super {p0, p1}, Lme/grishka/appkit/views/UsableRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private show()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mPopupShower:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 222
    :goto_0
    return v0

    .line 197
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mStartX:I

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mStartY:I

    .line 199
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mStartEvent:Landroid/view/MotionEvent;

    .line 200
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mOnLongPressed:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->sendMotionToParent(Landroid/view/MotionEvent;)Z

    .line 202
    const/4 v0, 0x1

    goto :goto_0

    .line 206
    :pswitch_1
    iput-boolean v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mHandledLongTap:Z

    .line 207
    iget-object v1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mOnLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    invoke-direct {p0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->cancelPopup()V

    .line 209
    invoke-virtual {p0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 210
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->sendMotionToParent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 213
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mStartX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mStartY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mOnLongPressed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 216
    :cond_1
    iget-boolean v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mHandledLongTap:Z

    if-nez v0, :cond_2

    .line 217
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->sendMotionToParent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 219
    :cond_2
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->handlePopupMove(Landroid/view/MotionEvent;)V

    .line 220
    iget-boolean v0, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mHandledLongTap:Z

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public init(Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;)V
    .locals 0
    .param p1, "projection"    # Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mViewToUrlProjection:Lcom/vkcoffee/android/stickers/WindowRecyclerView$Callback;

    .line 166
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 97
    invoke-super/range {p0 .. p5}, Lme/grishka/appkit/views/UsableRecyclerView;->onLayout(ZIIII)V

    .line 98
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 99
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->getLocationOnScreen([I)V

    .line 100
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/vkcoffee/android/stickers/WindowRecyclerView;->mKeyboardTop:I

    .line 101
    return-void
.end method
