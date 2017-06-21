.class public Lcom/vk/attachpicker/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static positionField:Ljava/lang/reflect/Field;

.field private static final tlInt2:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/vk/attachpicker/util/Utils$1;

    invoke-direct {v0}, Lcom/vk/attachpicker/util/Utils$1;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/util/Utils;->tlInt2:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 67
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 72
    .end local p1    # "min":F
    :goto_0
    return p1

    .line 69
    .restart local p1    # "min":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    .line 70
    goto :goto_0

    :cond_1
    move p1, p0

    .line 72
    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeSilently(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 107
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getPagerActiveView(Landroid/support/v4/view/ViewPager;)Landroid/view/View;
    .locals 10
    .param p0, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    const/4 v7, 0x0

    .line 117
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 118
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move-object v1, v7

    .line 149
    :goto_0
    return-object v1

    .line 122
    :cond_1
    sget-object v8, Lcom/vk/attachpicker/util/Utils;->positionField:Ljava/lang/reflect/Field;

    if-nez v8, :cond_2

    .line 124
    :try_start_0
    const-class v8, Landroid/support/v4/view/ViewPager$LayoutParams;

    const-string/jumbo v9, "position"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    sput-object v8, Lcom/vk/attachpicker/util/Utils;->positionField:Ljava/lang/reflect/Field;

    .line 125
    sget-object v8, Lcom/vk/attachpicker/util/Utils;->positionField:Ljava/lang/reflect/Field;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    .line 134
    .local v2, "currentPosition":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_5

    .line 135
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 136
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 137
    .local v5, "layoutParams":Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v8, v5, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v8, :cond_4

    .line 134
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 126
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "currentPosition":I
    .end local v4    # "i":I
    .end local v5    # "layoutParams":Landroid/support/v4/view/ViewPager$LayoutParams;
    :catch_0
    move-exception v3

    .line 127
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "position field not found"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 141
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "currentPosition":I
    .restart local v4    # "i":I
    .restart local v5    # "layoutParams":Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_4
    :try_start_1
    sget-object v8, Lcom/vk/attachpicker/util/Utils;->positionField:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 145
    .local v6, "position":I
    if-ne v6, v2, :cond_3

    goto :goto_0

    .line 142
    .end local v6    # "position":I
    :catch_1
    move-exception v3

    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "layoutParams":Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_5
    move-object v1, v7

    .line 149
    goto :goto_0
.end method

.method public static getThemeAccentColor(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 50
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f0101a6

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 51
    iget v1, v0, Landroid/util/TypedValue;->data:I

    return v1
.end method

.method public static getXOnScreen(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 55
    sget-object v1, Lcom/vk/attachpicker/util/Utils;->tlInt2:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 56
    .local v0, "coords":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 57
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public static getYOnScreen(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 61
    sget-object v1, Lcom/vk/attachpicker/util/Utils;->tlInt2:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 62
    .local v0, "coords":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 63
    const/4 v1, 0x1

    aget v1, v0, v1

    return v1
.end method

.method public static interpolate(IIF)I
    .locals 1
    .param p0, "src"    # I
    .param p1, "dst"    # I
    .param p2, "p"    # F

    .prologue
    .line 37
    sub-int v0, p1, p0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static interpolateColors(IIF)I
    .locals 6
    .param p0, "c0"    # I
    .param p1, "c1"    # I
    .param p2, "p"    # F

    .prologue
    .line 29
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    invoke-static {v4, v5, p2}, Lcom/vk/attachpicker/util/Utils;->interpolate(IIF)I

    move-result v0

    .line 30
    .local v0, "a":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v4, v5, p2}, Lcom/vk/attachpicker/util/Utils;->interpolate(IIF)I

    move-result v3

    .line 31
    .local v3, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v4, v5, p2}, Lcom/vk/attachpicker/util/Utils;->interpolate(IIF)I

    move-result v2

    .line 32
    .local v2, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v4, v5, p2}, Lcom/vk/attachpicker/util/Utils;->interpolate(IIF)I

    move-result v1

    .line 33
    .local v1, "b":I
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method public static modifyAlpha(IF)I
    .locals 1
    .param p0, "color"    # I
    .param p1, "alpha"    # F

    .prologue
    .line 45
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-static {p0, v0}, Lcom/vk/attachpicker/util/Utils;->modifyAlpha(II)I

    move-result v0

    return v0
.end method

.method public static modifyAlpha(II)I
    .locals 2
    .param p0, "color"    # I
    .param p1, "alpha"    # I

    .prologue
    .line 41
    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static runOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vk/attachpicker/util/Utils$2;

    invoke-direct {v1, p0, p1}, Lcom/vk/attachpicker/util/Utils$2;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 95
    return-void
.end method

.method public static setStatusBarColor(Landroid/view/Window;I)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "color"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    const/high16 v0, -0x80000000

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 81
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method
