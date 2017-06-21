.class Lcom/vk/attachpicker/widget/FiltersViewPager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FiltersViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/widget/FiltersViewPager;->lambda$showFakeSwipe$135()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/widget/FiltersViewPager;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/widget/FiltersViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/widget/FiltersViewPager;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/vk/attachpicker/widget/FiltersViewPager$2;->this$0:Lcom/vk/attachpicker/widget/FiltersViewPager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/widget/FiltersViewPager$2;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 77
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vk/attachpicker/widget/FiltersViewPager$2;->this$0:Lcom/vk/attachpicker/widget/FiltersViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vk/attachpicker/widget/FiltersViewPager;->access$002(Lcom/vk/attachpicker/widget/FiltersViewPager;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 82
    return-void
.end method
