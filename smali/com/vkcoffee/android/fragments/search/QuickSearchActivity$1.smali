.class Lcom/vkcoffee/android/fragments/search/QuickSearchActivity$1;
.super Landroid/view/animation/AccelerateDecelerateInterpolator;
.source "QuickSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity$1;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "input"    # F

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 55
    .local v0, "result":F
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity$1;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->access$000(Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 56
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity$1;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->access$000(Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 57
    return v0
.end method
