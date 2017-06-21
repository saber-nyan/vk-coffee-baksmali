.class public Lcom/vk/attachpicker/util/TooltipController;
.super Ljava/lang/Object;
.source "TooltipController.java"


# static fields
.field public static final KEY_FILTERS_TOOLTIP:Ljava/lang/String; = "filters_tooltip"

.field public static final KEY_FONT_TOOLTIP:Ljava/lang/String; = "font_tooltip"

.field public static final KEY_STICKER_TOOLTIP:Ljava/lang/String; = "sticker_tooltip"

.field public static final KEY_TEXT_TOOLTIP:Ljava/lang/String; = "text_tooltip"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final hideTooltip:Ljava/lang/Runnable;

.field private final showTooltip:Ljava/lang/Runnable;

.field private tooltipView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "tooltipView"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vk/attachpicker/util/TooltipController;->handler:Landroid/os/Handler;

    .line 36
    invoke-static {p0}, Lcom/vk/attachpicker/util/TooltipController$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/util/TooltipController;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/util/TooltipController;->showTooltip:Ljava/lang/Runnable;

    .line 41
    invoke-static {p0}, Lcom/vk/attachpicker/util/TooltipController$$Lambda$2;->lambdaFactory$(Lcom/vk/attachpicker/util/TooltipController;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/util/TooltipController;->hideTooltip:Ljava/lang/Runnable;

    .line 29
    iput-object p1, p0, Lcom/vk/attachpicker/util/TooltipController;->tooltipView:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/vk/attachpicker/util/TooltipController;->tooltipView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/vk/attachpicker/util/TooltipController;->tooltipView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/util/TooltipController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/util/TooltipController;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/vk/attachpicker/util/TooltipController;->tooltipView:Landroid/view/View;

    return-object v0
.end method

.method public static shouldShowTooltip(Ljava/lang/String;)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 17
    invoke-static {}, Lcom/vk/attachpicker/util/Prefs;->pickerPrefs()Lcom/vk/attachpicker/util/Prefs;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Lcom/vk/attachpicker/util/Prefs;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 18
    .local v0, "contains":Z
    if-eqz v0, :cond_0

    .line 22
    :goto_0
    return v1

    .line 21
    :cond_0
    invoke-static {}, Lcom/vk/attachpicker/util/Prefs;->pickerPrefs()Lcom/vk/attachpicker/util/Prefs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/util/Prefs;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v1, v2

    .line 22
    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vk/attachpicker/util/TooltipController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vk/attachpicker/util/TooltipController;->showTooltip:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    iget-object v0, p0, Lcom/vk/attachpicker/util/TooltipController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vk/attachpicker/util/TooltipController;->hideTooltip:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method

.method public hideTooltip()V
    .locals 2

    .prologue
    .line 71
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vk/attachpicker/util/TooltipController;->hideTooltip(J)V

    .line 72
    return-void
.end method

.method public hideTooltip(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/vk/attachpicker/util/TooltipController;->cancel()V

    .line 63
    iget-object v0, p0, Lcom/vk/attachpicker/util/TooltipController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vk/attachpicker/util/TooltipController;->hideTooltip:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    return-void
.end method

.method synthetic lambda$new$136()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vk/attachpicker/util/TooltipController;->tooltipView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/vk/attachpicker/util/TooltipController;->tooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 39
    return-void
.end method

.method synthetic lambda$new$137()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vk/attachpicker/util/TooltipController;->tooltipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/vk/attachpicker/util/TooltipController$1;

    invoke-direct {v1, p0}, Lcom/vk/attachpicker/util/TooltipController$1;-><init>(Lcom/vk/attachpicker/util/TooltipController;)V

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 49
    return-void
.end method

.method public showTooltip()V
    .locals 2

    .prologue
    .line 67
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/vk/attachpicker/util/TooltipController;->showTooltip(J)V

    .line 68
    return-void
.end method

.method public showTooltip(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/vk/attachpicker/util/TooltipController;->cancel()V

    .line 58
    iget-object v0, p0, Lcom/vk/attachpicker/util/TooltipController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vk/attachpicker/util/TooltipController;->showTooltip:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    return-void
.end method
