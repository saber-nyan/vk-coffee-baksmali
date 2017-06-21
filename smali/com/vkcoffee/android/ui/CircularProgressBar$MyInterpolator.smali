.class Lcom/vkcoffee/android/ui/CircularProgressBar$MyInterpolator;
.super Ljava/lang/Object;
.source "CircularProgressBar.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/CircularProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyInterpolator"
.end annotation


# instance fields
.field private acc:Landroid/view/animation/AccelerateInterpolator;

.field private dec:Landroid/view/animation/DecelerateInterpolator;

.field final synthetic this$0:Lcom/vkcoffee/android/ui/CircularProgressBar;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ui/CircularProgressBar;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 175
    iput-object p1, p0, Lcom/vkcoffee/android/ui/CircularProgressBar$MyInterpolator;->this$0:Lcom/vkcoffee/android/ui/CircularProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar$MyInterpolator;->dec:Landroid/view/animation/DecelerateInterpolator;

    .line 173
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar$MyInterpolator;->acc:Landroid/view/animation/AccelerateInterpolator;

    .line 177
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 181
    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar$MyInterpolator;->acc:Landroid/view/animation/AccelerateInterpolator;

    mul-float v1, p1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v4

    .line 184
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/CircularProgressBar$MyInterpolator;->dec:Landroid/view/animation/DecelerateInterpolator;

    sub-float v1, p1, v4

    mul-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v4

    goto :goto_0
.end method
