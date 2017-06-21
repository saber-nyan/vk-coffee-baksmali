.class public Lcom/vk/attachpicker/util/Screen;
.super Ljava/lang/Object;
.source "Screen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/attachpicker/util/Screen$ViewCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static density()F
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 29
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 32
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static dp(F)I
    .locals 4
    .param p0, "dp"    # F

    .prologue
    .line 18
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 19
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 21
    .local v1, "scale":F
    mul-float v2, p0, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 23
    .end local v1    # "scale":F
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static dp(I)I
    .locals 1
    .param p0, "dp"    # I

    .prologue
    .line 14
    int-to-float v0, p0

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->dp(F)I

    move-result v0

    return v0
.end method

.method public static getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 4

    .prologue
    .line 51
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 52
    .local v1, "windowManager":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 53
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 54
    return-object v0
.end method

.method public static getStatusBarHeight()I
    .locals 6

    .prologue
    .line 74
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    const/4 v1, 0x0

    .line 82
    .local v0, "resourceId":I
    .local v1, "result":I
    :cond_0
    :goto_0
    return v1

    .line 77
    .end local v0    # "resourceId":I
    .end local v1    # "result":I
    :cond_1
    const/16 v2, 0x18

    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v1

    .line 78
    .restart local v1    # "result":I
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 79
    .restart local v0    # "resourceId":I
    if-lez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method public static height()I
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static iterateOverViews(Landroid/view/ViewGroup;Lcom/vk/attachpicker/util/Screen$ViewCallback;)V
    .locals 3
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "callback"    # Lcom/vk/attachpicker/util/Screen$ViewCallback;

    .prologue
    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 87
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "v":Landroid/view/View;
    invoke-interface {p1, v1}, Lcom/vk/attachpicker/util/Screen$ViewCallback;->view(Landroid/view/View;)V

    .line 89
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 90
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "v":Landroid/view/View;
    invoke-static {v1, p1}, Lcom/vk/attachpicker/util/Screen;->iterateOverViews(Landroid/view/ViewGroup;Lcom/vk/attachpicker/util/Screen$ViewCallback;)V

    .line 86
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    return-void
.end method

.method public static realHeight()I
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static realWidth()I
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static sp(F)I
    .locals 4
    .param p0, "sp"    # F

    .prologue
    .line 41
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 44
    .local v1, "scale":F
    mul-float v2, p0, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 46
    .end local v1    # "scale":F
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static sp(I)I
    .locals 1
    .param p0, "sp"    # I

    .prologue
    .line 37
    int-to-float v0, p0

    invoke-static {v0}, Lcom/vk/attachpicker/util/Screen;->sp(F)I

    move-result v0

    return v0
.end method

.method public static width()I
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method
