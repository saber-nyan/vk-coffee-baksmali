.class Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;
.super Landroid/widget/ImageButton;
.source "FABHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/FABHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatingActionButton"
.end annotation


# static fields
.field private static final TRANSLATE_DURATION_MILLIS:I = 0xc8


# instance fields
.field private mScrollDetector:Lcom/vkcoffee/android/ui/ListDirectionDetector;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 280
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 264
    iput-boolean v6, p0, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->mVisible:Z

    .line 266
    new-instance v3, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton$1;-><init>(Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;)V

    iput-object v3, p0, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->mScrollDetector:Lcom/vkcoffee/android/ui/ListDirectionDetector;

    .line 281
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 282
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->setElevation(F)V

    .line 285
    :cond_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 286
    .local v1, "normal":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 288
    .local v0, "colorRipple":I
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v4, v6, [[I

    new-array v5, v7, [I

    aput-object v5, v4, v7

    new-array v5, v6, [I

    aput v0, v5, v7

    invoke-direct {v3, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 289
    .local v2, "rippleDrawable":Landroid/graphics/drawable/RippleDrawable;
    new-instance v3, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton$2;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton$2;-><init>(Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;)V

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 296
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->setClipToOutline(Z)V

    .line 297
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 298
    return-void
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;)Lcom/vkcoffee/android/ui/ListDirectionDetector;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->mScrollDetector:Lcom/vkcoffee/android/ui/ListDirectionDetector;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 261
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->toggle(ZZ)V

    return-void
.end method

.method private getMarginBottom()I
    .locals 2

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 342
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 343
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 345
    :goto_0
    return v1

    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private toggle(ZZ)V
    .locals 6
    .param p1, "visible"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 315
    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->mVisible:Z

    if-ne v3, p1, :cond_0

    if-eqz p2, :cond_1

    .line 316
    :cond_0
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->mVisible:Z

    .line 317
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->getHeight()I

    move-result v0

    .line 318
    .local v0, "height":I
    if-nez v0, :cond_2

    if-nez p2, :cond_2

    .line 319
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 320
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 321
    new-instance v3, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton$3;

    invoke-direct {v3, p0, p1}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton$3;-><init>(Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;Z)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 338
    .end local v0    # "height":I
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    :goto_0
    return-void

    .line 335
    .restart local v0    # "height":I
    :cond_2
    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 336
    .local v1, "translationY":I
    :goto_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Lcom/vkcoffee/android/ui/FABHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 335
    .end local v1    # "translationY":I
    :cond_3
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->getMarginBottom()I

    move-result v3

    add-int v1, v0, v3

    goto :goto_1
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 311
    invoke-direct {p0, v0, v0}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->toggle(ZZ)V

    .line 312
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 302
    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v0

    .line 303
    .local v0, "size":I
    invoke-virtual {p0, v0, v0}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->setMeasuredDimension(II)V

    .line 304
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 307
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/ui/FABHelper$FloatingActionButton;->toggle(ZZ)V

    .line 308
    return-void
.end method
