.class Lcom/vkcoffee/android/fragments/AudioListFragment$4$1;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment$4;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$4;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$4;

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 9

    .prologue
    const v8, 0x7f10016c

    const v7, 0x7f100167

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v4, -0x3ee00000    # -10.0f

    const/4 v6, 0x0

    .line 678
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$4;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment$4;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$4;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$30(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 680
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$4;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment$4;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$4;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$30(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x44480000    # 800.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    if-le v2, v3, :cond_1

    .line 681
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$4;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment$4;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$4;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$30(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 682
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 683
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 684
    new-instance v2, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$4;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/AudioListFragment$4;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$4;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 685
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 686
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$4;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment$4;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$4;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$30(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    const v3, 0x7f0f001d

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 699
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$4;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment$4;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$4;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$2(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100168

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 700
    .local v0, "pw":Landroid/view/View;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$4;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment$4;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$4;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$30(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x44500000    # 832.0f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    if-le v2, v3, :cond_3

    .line 701
    new-instance v2, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$4;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/AudioListFragment$4;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$4;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 702
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 703
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$4;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment$4;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$4;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$2(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 709
    :goto_1
    return v6

    .line 688
    .end local v0    # "pw":Landroid/view/View;
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$4;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment$4;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$4;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$31(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 689
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$4;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment$4;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$4;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$30(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 691
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$4;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment$4;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$4;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$30(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 692
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 693
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 694
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 695
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$4;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment$4;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$4;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$31(Lcom/vkcoffee/android/fragments/AudioListFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 696
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 705
    .restart local v0    # "pw":Landroid/view/View;
    :cond_3
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 706
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 707
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$4$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$4;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment$4;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$4;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$2(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
