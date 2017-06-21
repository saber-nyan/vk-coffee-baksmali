.class public final Lcom/vkcoffee/android/gifs/GifRootLayout;
.super Landroid/widget/FrameLayout;
.source "GifRootLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;
    }
.end annotation


# instance fields
.field mBottomBar:Landroid/view/View;

.field final mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

.field final mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

.field mDraggableView:Landroid/view/View;

.field mDraggableXOffset:I

.field mDraggableYOffset:I

.field mKeyListener:Landroid/view/View$OnKeyListener;

.field mNavigationCallback:Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;

.field final mOverlayPaint:Landroid/graphics/Paint;

.field mOverlayRect:Landroid/graphics/Rect;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final mPositionOnScreen:[I

.field final mScripBottom:Landroid/graphics/drawable/Drawable;

.field final mScripTop:Landroid/graphics/drawable/Drawable;

.field mToolbar:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/gifs/GifRootLayout$1;-><init>(Lcom/vkcoffee/android/gifs/GifRootLayout;)V

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    .line 97
    const v0, 0x459c4000    # 5000.0f

    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    invoke-static {p0, v0, v1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;)Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mOverlayPaint:Landroid/graphics/Paint;

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mPositionOnScreen:[I

    .line 135
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 136
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setWillNotDraw(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mScripTop:Landroid/graphics/drawable/Drawable;

    .line 140
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mScripBottom:Landroid/graphics/drawable/Drawable;

    .line 141
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mOverlayPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 143
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setFitsSystemWindows(Z)V

    .line 144
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setClipChildren(Z)V

    .line 145
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setClipToPadding(Z)V

    .line 146
    const/16 v0, 0x700

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setSystemUiVisibility(I)V

    .line 118
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/gifs/GifRootLayout$1;-><init>(Lcom/vkcoffee/android/gifs/GifRootLayout;)V

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    .line 97
    const v0, 0x459c4000    # 5000.0f

    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    invoke-static {p0, v0, v1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;)Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mOverlayPaint:Landroid/graphics/Paint;

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mPositionOnScreen:[I

    .line 135
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 136
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setWillNotDraw(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mScripTop:Landroid/graphics/drawable/Drawable;

    .line 140
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mScripBottom:Landroid/graphics/drawable/Drawable;

    .line 141
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mOverlayPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 143
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setFitsSystemWindows(Z)V

    .line 144
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setClipChildren(Z)V

    .line 145
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setClipToPadding(Z)V

    .line 146
    const/16 v0, 0x700

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setSystemUiVisibility(I)V

    .line 122
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/gifs/GifRootLayout$1;-><init>(Lcom/vkcoffee/android/gifs/GifRootLayout;)V

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    .line 97
    const v0, 0x459c4000    # 5000.0f

    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    invoke-static {p0, v0, v1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;)Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mOverlayPaint:Landroid/graphics/Paint;

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mPositionOnScreen:[I

    .line 135
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 136
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setWillNotDraw(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mScripTop:Landroid/graphics/drawable/Drawable;

    .line 140
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mScripBottom:Landroid/graphics/drawable/Drawable;

    .line 141
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mOverlayPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 143
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setFitsSystemWindows(Z)V

    .line 144
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setClipChildren(Z)V

    .line 145
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setClipToPadding(Z)V

    .line 146
    const/16 v0, 0x700

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setSystemUiVisibility(I)V

    .line 126
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    new-instance v0, Lcom/vkcoffee/android/gifs/GifRootLayout$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/gifs/GifRootLayout$1;-><init>(Lcom/vkcoffee/android/gifs/GifRootLayout;)V

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    .line 97
    const v0, 0x459c4000    # 5000.0f

    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mCallback:Lcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;

    invoke-static {p0, v0, v1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/vkcoffee/android/ui/widget/ViewDragHelper$Callback;)Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mOverlayPaint:Landroid/graphics/Paint;

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mPositionOnScreen:[I

    .line 135
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 136
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setWillNotDraw(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mScripTop:Landroid/graphics/drawable/Drawable;

    .line 140
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mScripBottom:Landroid/graphics/drawable/Drawable;

    .line 141
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mOverlayPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 143
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setFitsSystemWindows(Z)V

    .line 144
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setClipChildren(Z)V

    .line 145
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setClipToPadding(Z)V

    .line 146
    const/16 v0, 0x700

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setSystemUiVisibility(I)V

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 188
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDraggableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDraggableXOffset:I

    .line 186
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDraggableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDraggableYOffset:I

    goto :goto_0
.end method

.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mToolbar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 169
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mBottomBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 170
    return-object p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 216
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mNavigationCallback:Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mNavigationCallback:Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;

    invoke-interface {v1}, Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;->hasPreviewLocationData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mOverlayRect:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mNavigationCallback:Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;

    invoke-interface {v1}, Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;->getViewLocation()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mOverlayRect:Landroid/graphics/Rect;

    .line 219
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mNavigationCallback:Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;

    invoke-interface {v1}, Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;->getClipTopBottom()[I

    move-result-object v0

    .line 221
    .local v0, "topBottom":[I
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mOverlayRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    aget v3, v0, v5

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 222
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mOverlayRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    aget v3, v0, v4

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 224
    .end local v0    # "topBottom":[I
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mPositionOnScreen:[I

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getLocationOnScreen([I)V

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 226
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mPositionOnScreen:[I

    aget v2, v2, v4

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 227
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v5, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 228
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mOverlayRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mOverlayPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 229
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 231
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 232
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/4 v4, 0x0

    .line 192
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mToolbar:Landroid/view/View;

    if-ne p2, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mScripTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mToolbar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 194
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mScripTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mBottomBar:Landroid/view/View;

    if-ne p2, v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mScripBottom:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mBottomBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 198
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mScripBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 200
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public getBackgroundAlpha()I
    .locals 3

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 248
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 249
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    .line 251
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 153
    const v0, 0x7f100217

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDraggableView:Landroid/view/View;

    .line 154
    const v0, 0x7f100112

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mToolbar:Landroid/view/View;

    .line 155
    const v0, 0x7f100218

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mBottomBar:Landroid/view/View;

    .line 156
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->setBackgroundColor(I)V

    .line 157
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 175
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 176
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDraggableView:Landroid/view/View;

    iget v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDraggableXOffset:I

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 177
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDraggableView:Landroid/view/View;

    iget v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDraggableYOffset:I

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 178
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mDragHelper:Lcom/vkcoffee/android/ui/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/ui/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method performBack()V
    .locals 3

    .prologue
    .line 273
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 274
    return-void
.end method

.method public setBackgroundAlpha(I)V
    .locals 4
    .param p1, "alpha"    # I

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 236
    invoke-virtual {p0}, Lcom/vkcoffee/android/gifs/GifRootLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 237
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 239
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mScripTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 240
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mScripBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 241
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mBottomBar:Landroid/view/View;

    int-to-float v2, p1

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 242
    iget-object v1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mToolbar:Landroid/view/View;

    int-to-float v2, p1

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 244
    :cond_0
    return-void
.end method

.method public setNavigationProvider(Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;)V
    .locals 0
    .param p1, "provider"    # Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 255
    iput-object p1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mNavigationCallback:Lcom/vkcoffee/android/gifs/GifRootLayout$Callback;

    .line 256
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 261
    iput-object p1, p0, Lcom/vkcoffee/android/gifs/GifRootLayout;->mKeyListener:Landroid/view/View$OnKeyListener;

    .line 262
    return-void
.end method
