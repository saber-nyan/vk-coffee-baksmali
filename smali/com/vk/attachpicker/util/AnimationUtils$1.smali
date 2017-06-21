.class final Lcom/vk/attachpicker/util/AnimationUtils$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/util/AnimationUtils;->layersForAnimator(Landroid/animation/Animator;[Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$views:[Landroid/view/View;


# direct methods
.method constructor <init>([Landroid/view/View;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/vk/attachpicker/util/AnimationUtils$1;->val$views:[Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/util/AnimationUtils$1;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 32
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vk/attachpicker/util/AnimationUtils$1;->val$views:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/vk/attachpicker/util/AnimationUtils$1;->val$views:[Landroid/view/View;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method
