.class public Lcom/vkcoffee/android/ui/DepthPageTransformer;
.super Ljava/lang/Object;
.source "DepthPageTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# static fields
.field private static MIN_SCALE:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/high16 v0, 0x3f400000    # 0.75f

    sput v0, Lcom/vkcoffee/android/ui/DepthPageTransformer;->MIN_SCALE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 12
    .local v0, "pageWidth":I
    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    .line 14
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 39
    :goto_0
    return-void

    .line 16
    :cond_0
    cmpg-float v2, p2, v3

    if-gtz v2, :cond_1

    .line 18
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 19
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 20
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    .line 21
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 23
    :cond_1
    cmpg-float v2, p2, v5

    if-gtz v2, :cond_2

    .line 25
    sub-float v2, v5, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 28
    int-to-float v2, v0

    neg-float v3, p2

    mul-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 31
    sget v2, Lcom/vkcoffee/android/ui/DepthPageTransformer;->MIN_SCALE:F

    sget v3, Lcom/vkcoffee/android/ui/DepthPageTransformer;->MIN_SCALE:F

    sub-float v3, v5, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 32
    .local v1, "scaleFactor":F
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 37
    .end local v1    # "scaleFactor":F
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
