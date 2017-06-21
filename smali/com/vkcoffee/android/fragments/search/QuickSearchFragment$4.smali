.class Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->showContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$4;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 215
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$4;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;

    .line 216
    .local v0, "activity":Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/search/QuickSearchActivity;->showKeyboard()V

    .line 219
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    const/16 v2, 0x8

    .line 208
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$4;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->access$600(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$4;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->access$700(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$4;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->access$800(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 211
    return-void
.end method
