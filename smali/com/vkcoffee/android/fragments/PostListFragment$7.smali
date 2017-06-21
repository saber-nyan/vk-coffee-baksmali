.class Lcom/vkcoffee/android/fragments/PostListFragment$7;
.super Ljava/lang/Object;
.source "PostListFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostListFragment;->animateItemsIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 849
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostListFragment$7;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 14

    .prologue
    .line 852
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PostListFragment$7;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PostListFragment;->access$700(Lcom/vkcoffee/android/fragments/PostListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v10

    if-nez v10, :cond_0

    .line 853
    const/4 v10, 0x0

    .line 921
    :goto_0
    return v10

    .line 855
    :cond_0
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PostListFragment$7;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PostListFragment;->access$800(Lcom/vkcoffee/android/fragments/PostListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v10

    invoke-virtual {v10}, Lme/grishka/appkit/views/UsableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 856
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 857
    .local v3, "heights":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PostListFragment$7;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PostListFragment;->access$900(Lcom/vkcoffee/android/fragments/PostListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v10

    invoke-virtual {v10}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildCount()I

    move-result v10

    if-ge v4, v10, :cond_3

    .line 858
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PostListFragment$7;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PostListFragment;->access$1000(Lcom/vkcoffee/android/fragments/PostListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v10

    invoke-virtual {v10, v4}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 859
    .local v1, "c":Landroid/view/View;
    const v10, 0x7f100069

    invoke-virtual {v1, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 860
    .local v5, "id":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 857
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 863
    :cond_1
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 864
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 868
    .end local v1    # "c":Landroid/view/View;
    .end local v5    # "id":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    .line 869
    .local v7, "offset":I
    const/16 v2, -0x3c

    .line 870
    .local v2, "delay":I
    const-string/jumbo v8, ""

    .line 871
    .local v8, "prevId":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 872
    .local v0, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v4, 0x0

    :goto_3
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PostListFragment$7;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PostListFragment;->access$1100(Lcom/vkcoffee/android/fragments/PostListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v10

    invoke-virtual {v10}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildCount()I

    move-result v10

    if-ge v4, v10, :cond_6

    .line 873
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PostListFragment$7;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PostListFragment;->access$1200(Lcom/vkcoffee/android/fragments/PostListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v10

    invoke-virtual {v10, v4}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 874
    .restart local v1    # "c":Landroid/view/View;
    const v10, 0x7f100069

    invoke-virtual {v1, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 875
    .restart local v5    # "id":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 872
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 878
    :cond_4
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 879
    const/4 v7, 0x0

    .line 880
    add-int/lit8 v2, v2, 0x3c

    .line 882
    :cond_5
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v10, v7

    int-to-float v10, v10

    invoke-virtual {v1, v10}, Landroid/view/View;->setPivotY(F)V

    .line 883
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v1, v10}, Landroid/view/View;->setPivotX(F)V

    .line 884
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v7, v10

    .line 885
    move-object v8, v5

    .line 886
    const-string/jumbo v10, "alpha"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_0

    invoke-static {v1, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 887
    .local v6, "oa":Landroid/animation/ObjectAnimator;
    int-to-long v10, v2

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 888
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    const-string/jumbo v10, "translationY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/vkcoffee/android/fragments/PostListFragment$7;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-static {v13}, Lcom/vkcoffee/android/fragments/PostListFragment;->access$1300(Lcom/vkcoffee/android/fragments/PostListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v13

    invoke-virtual {v13}, Lme/grishka/appkit/views/UsableRecyclerView;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    aput v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput v13, v11, v12

    invoke-static {v1, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 893
    int-to-long v10, v2

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 894
    new-instance v10, Lcom/vkcoffee/android/ui/HardwareLayerAnimatorListener;

    invoke-direct {v10}, Lcom/vkcoffee/android/ui/HardwareLayerAnimatorListener;-><init>()V

    invoke-virtual {v6, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 895
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 896
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    .line 898
    .end local v1    # "c":Landroid/view/View;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "oa":Landroid/animation/ObjectAnimator;
    :cond_6
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 899
    .local v9, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 900
    const-wide/16 v10, 0x12c

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 901
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PostListFragment$7;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PostListFragment;->access$1400(Lcom/vkcoffee/android/fragments/PostListFragment;)Lcom/vkcoffee/android/ui/CubicBezierInterpolator;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 902
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/PostListFragment$7;->this$0:Lcom/vkcoffee/android/fragments/PostListFragment;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/PostListFragment;->access$500(Lcom/vkcoffee/android/fragments/PostListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    new-instance v10, Lcom/vkcoffee/android/fragments/PostListFragment$7$1;

    invoke-direct {v10, p0, v9}, Lcom/vkcoffee/android/fragments/PostListFragment$7$1;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment$7;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 920
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 921
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 886
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
