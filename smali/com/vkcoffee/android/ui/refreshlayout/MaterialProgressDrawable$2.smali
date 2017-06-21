.class Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$2;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

.field final synthetic val$ring:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$Ring;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$2;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    iput-object p2, p0, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$2;->val$ring:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 429
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 433
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$2;->val$ring:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 434
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$2;->val$ring:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$Ring;->goToNextColor()V

    .line 435
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$2;->val$ring:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$2;->val$ring:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 436
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$2;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    iget-boolean v0, v0, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$2;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    iput-boolean v2, v0, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->mFinishing:Z

    .line 440
    const-wide/16 v0, 0x534

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 441
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$2;->val$ring:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 445
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$2;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$2;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    invoke-static {v1}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->access$400(Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->access$402(Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;F)F

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable$2;->this$0:Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;->access$402(Lcom/vkcoffee/android/ui/refreshlayout/MaterialProgressDrawable;F)F

    .line 424
    return-void
.end method
