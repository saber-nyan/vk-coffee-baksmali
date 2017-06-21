.class Lcom/vkcoffee/android/fragments/search/QuickSearchActivity$4;
.super Ljava/lang/Object;
.source "QuickSearchActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->finish()V
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
    .line 217
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity$4;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity$4;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->access$100(Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity$4;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->access$701(Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;)V

    .line 235
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity$4;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    invoke-virtual {v0, v2, v2}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->overridePendingTransition(II)V

    .line 236
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity$4;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->access$100(Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity$4;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->access$601(Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;)V

    .line 227
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity$4;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    invoke-virtual {v0, v2, v2}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->overridePendingTransition(II)V

    .line 228
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity$4;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->access$100(Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 229
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 241
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 221
    return-void
.end method
