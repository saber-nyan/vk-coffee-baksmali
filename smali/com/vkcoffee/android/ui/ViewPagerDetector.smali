.class public Lcom/vkcoffee/android/ui/ViewPagerDetector;
.super Ljava/lang/Object;
.source "ViewPagerDetector.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/ViewPagerDetector$Callback;
    }
.end annotation


# instance fields
.field private final callback:Lcom/vkcoffee/android/ui/ViewPagerDetector$Callback;

.field private isDraggingStarted:Z

.field private isToLeft:Ljava/lang/Boolean;

.field private lastX:F

.field private mLastState:I

.field private next:I


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ui/ViewPagerDetector$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/vkcoffee/android/ui/ViewPagerDetector$Callback;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->isToLeft:Ljava/lang/Boolean;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->isDraggingStarted:Z

    .line 16
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->lastX:F

    .line 21
    iput-object p1, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->callback:Lcom/vkcoffee/android/ui/ViewPagerDetector$Callback;

    .line 22
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    const-string/jumbo v0, "onScrollStateChanged"

    const-string/jumbo v1, "===================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput p1, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->mLastState:I

    .line 61
    if-eq p1, v3, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 62
    :cond_0
    iput-boolean v3, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->isDraggingStarted:Z

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    if-nez p1, :cond_1

    .line 64
    iput-boolean v2, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->isDraggingStarted:Z

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->isToLeft:Ljava/lang/Boolean;

    .line 66
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->lastX:F

    .line 67
    iput v2, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->next:I

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 26
    iget-boolean v1, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->isDraggingStarted:Z

    if-eqz v1, :cond_1

    .line 27
    iget v1, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->lastX:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    .line 28
    iget-object v1, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->isToLeft:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 29
    iget v1, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->lastX:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2

    .line 30
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->isToLeft:Ljava/lang/Boolean;

    .line 34
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->isToLeft:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, p1

    :goto_1
    iput v1, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->next:I

    .line 36
    :cond_0
    iget v1, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->next:I

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->isToLeft:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 47
    :cond_1
    :goto_2
    return-void

    .line 32
    :cond_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->isToLeft:Ljava/lang/Boolean;

    goto :goto_0

    .line 34
    :cond_3
    add-int/lit8 v1, p1, 0x1

    goto :goto_1

    .line 39
    :cond_4
    iget-object v1, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->isToLeft:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, p2

    .line 41
    .local v0, "percent":F
    :goto_3
    const-string/jumbo v1, "onPageScrolled()"

    const-string/jumbo v2, "[%d, %d, %f]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->next:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v1, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->callback:Lcom/vkcoffee/android/ui/ViewPagerDetector$Callback;

    iget v2, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->next:I

    invoke-interface {v1, p1, v2, v0}, Lcom/vkcoffee/android/ui/ViewPagerDetector$Callback;->onPageScrolled(IIF)V

    .line 45
    .end local v0    # "percent":F
    :cond_5
    iput p2, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->lastX:F

    goto :goto_2

    :cond_6
    move v0, p2

    .line 39
    goto :goto_3
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 51
    iget v0, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->mLastState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 52
    const-string/jumbo v0, "onPageSelected()"

    const-string/jumbo v1, "===================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/vkcoffee/android/ui/ViewPagerDetector;->callback:Lcom/vkcoffee/android/ui/ViewPagerDetector$Callback;

    invoke-interface {v0, p1}, Lcom/vkcoffee/android/ui/ViewPagerDetector$Callback;->onPageSelected(I)V

    .line 55
    :cond_0
    return-void
.end method
