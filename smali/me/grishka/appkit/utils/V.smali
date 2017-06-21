.class public Lme/grishka/appkit/utils/V;
.super Ljava/lang/Object;
.source "V.java"


# static fields
.field private static appContext:Landroid/content/Context;

.field private static visibilityAnims:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lme/grishka/appkit/utils/V;->visibilityAnims:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lme/grishka/appkit/utils/V;->visibilityAnims:Ljava/util/HashMap;

    return-object v0
.end method

.method public static cancelVisibilityAnimation(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 111
    sget-object v0, Lme/grishka/appkit/utils/V;->visibilityAnims:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    sget-object v0, Lme/grishka/appkit/utils/V;->visibilityAnims:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 113
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public static dp(F)I
    .locals 2
    .param p0, "dp"    # F

    .prologue
    .line 41
    sget-object v0, Lme/grishka/appkit/utils/V;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Application context is not set, call V.setApplicationContext() before using these methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    sget-object v0, Lme/grishka/appkit/utils/V;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static findClickableChild(Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 6
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 127
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 128
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "c":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, p1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p2, :cond_1

    .line 130
    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    .end local v0    # "c":Landroid/view/View;
    :goto_1
    return-object v0

    .line 132
    .restart local v0    # "c":Landroid/view/View;
    :cond_0
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v3, v0

    .line 133
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, p1, v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v5, p2, v5

    invoke-static {v3, v4, v5}, Lme/grishka/appkit/utils/V;->findClickableChild(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v2

    .line 134
    .local v2, "r":Landroid/view/View;
    if-eqz v2, :cond_1

    move-object v0, v2

    .line 135
    goto :goto_1

    .line 127
    .end local v2    # "r":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "c":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getViewOffset(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;
    .locals 6
    .param p0, "v1"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "v2"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 117
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .local v0, "p1":[I
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    .line 118
    .local v1, "p2":[I
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 120
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 123
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    aget v3, v0, v4

    aget v4, v1, v4

    sub-int/2addr v3, v4

    aget v4, v0, v5

    aget v5, v1, v5

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v2

    .line 117
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sget-object v0, Lme/grishka/appkit/utils/V;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lme/grishka/appkit/utils/V;->appContext:Landroid/content/Context;

    .line 33
    :cond_0
    return-void
.end method

.method public static setVisibilityAnimated(Landroid/view/View;I)V
    .locals 12
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visibility"    # I

    .prologue
    const-wide/16 v10, 0x12c

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 52
    if-nez p0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    if-nez p1, :cond_3

    move v2, v4

    .line 56
    .local v2, "vis":Z
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    sget v3, Lme/grishka/appkit/R$id;->tag_visibility_anim:I

    invoke-virtual {p0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    move v1, v4

    .line 57
    .local v1, "viewVis":Z
    :goto_2
    if-eq v2, v1, :cond_0

    .line 58
    sget-object v3, Lme/grishka/appkit/utils/V;->visibilityAnims:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    sget-object v3, Lme/grishka/appkit/utils/V;->visibilityAnims:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 60
    sget-object v3, Lme/grishka/appkit/utils/V;->visibilityAnims:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_2
    if-eqz v2, :cond_6

    .line 63
    const-string/jumbo v7, "alpha"

    const/4 v3, 0x2

    new-array v8, v3, [F

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpg-float v3, v3, v9

    if-gez v3, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    :goto_3
    aput v3, v8, v5

    aput v9, v8, v4

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 64
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    new-instance v3, Lme/grishka/appkit/utils/V$1;

    invoke-direct {v3, p0, p1}, Lme/grishka/appkit/utils/V$1;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 79
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 80
    sget-object v3, Lme/grishka/appkit/utils/V;->visibilityAnims:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v1    # "viewVis":Z
    .end local v2    # "vis":Z
    :cond_3
    move v2, v5

    .line 55
    goto :goto_1

    .restart local v2    # "vis":Z
    :cond_4
    move v1, v5

    .line 56
    goto :goto_2

    .restart local v1    # "viewVis":Z
    :cond_5
    move v3, v6

    .line 63
    goto :goto_3

    .line 83
    :cond_6
    const-string/jumbo v3, "alpha"

    new-array v7, v4, [F

    aput v6, v7, v5

    invoke-static {p0, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 84
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    new-instance v3, Lme/grishka/appkit/utils/V$2;

    invoke-direct {v3, p0, p1}, Lme/grishka/appkit/utils/V$2;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 102
    sget v3, Lme/grishka/appkit/R$id;->tag_visibility_anim:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 103
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 104
    sget-object v3, Lme/grishka/appkit/utils/V;->visibilityAnims:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0
.end method
