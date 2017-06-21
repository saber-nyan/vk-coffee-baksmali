.class public abstract Lcom/vkcoffee/android/fragments/CardRecyclerFragment;
.super Lcom/vkcoffee/android/fragments/VKRecyclerFragment;
.source "CardRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vkcoffee/android/fragments/VKRecyclerFragment",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final TABLET_MIN_WIDTH:I = 0x39c

.field public static final TABLET_PADDING:I = 0x39c


# instance fields
.field private decorator:Lcom/vkcoffee/android/ui/CardItemDecorator;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "perPage"    # I

    .prologue
    .line 21
    .local p0, "this":Lcom/vkcoffee/android/fragments/CardRecyclerFragment;, "Lcom/vkcoffee/android/fragments/CardRecyclerFragment<TT;>;"
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;-><init>(I)V

    .line 22
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "layout"    # I
    .param p2, "perPage"    # I

    .prologue
    .line 25
    .local p0, "this":Lcom/vkcoffee/android/fragments/CardRecyclerFragment;, "Lcom/vkcoffee/android/fragments/CardRecyclerFragment<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;-><init>(II)V

    .line 26
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 29
    .local p0, "this":Lcom/vkcoffee/android/fragments/CardRecyclerFragment;, "Lcom/vkcoffee/android/fragments/CardRecyclerFragment<TT;>;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    .line 30
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->updateConfiguration()V

    .line 31
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 40
    .local p0, "this":Lcom/vkcoffee/android/fragments/CardRecyclerFragment;, "Lcom/vkcoffee/android/fragments/CardRecyclerFragment<TT;>;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 41
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->updateConfiguration()V

    .line 42
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->updateDecorator()V

    .line 43
    return-void
.end method

.method protected onCreateCardDecorator()Lcom/vkcoffee/android/ui/CardItemDecorator;
    .locals 9

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/fragments/CardRecyclerFragment;, "Lcom/vkcoffee/android/fragments/CardRecyclerFragment<TT;>;"
    const/4 v8, 0x0

    .line 61
    const/4 v4, 0x1

    .line 62
    .local v4, "z":Z
    iget v5, p0, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->scrW:I

    const/16 v6, 0x39c

    if-lt v5, v6, :cond_1

    .line 63
    const/4 v1, 0x1

    .line 67
    .local v1, "isTabletDecorator":Z
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    .line 68
    .local v3, "usableRecyclerView":Lme/grishka/appkit/views/UsableRecyclerView;
    if-eqz v1, :cond_0

    .line 69
    const/4 v4, 0x0

    .line 71
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/ui/CardItemDecorator;

    invoke-direct {v0, v3, v4}, Lcom/vkcoffee/android/ui/CardItemDecorator;-><init>(Landroid/support/v7/widget/RecyclerView;Z)V

    .line 72
    .local v0, "decorator":Lcom/vkcoffee/android/ui/CardItemDecorator;
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v6}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v7}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v7

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/vkcoffee/android/ui/CardItemDecorator;->setPadding(IIII)V

    .line 73
    if-eqz v1, :cond_2

    .line 74
    const/16 v5, 0x10

    iget v6, p0, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->scrW:I

    add-int/lit16 v6, v6, -0x39c

    div-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    .line 78
    .local v2, "pad":I
    :goto_1
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v5, v2, v8, v2, v8}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 79
    return-object v0

    .line 65
    .end local v0    # "decorator":Lcom/vkcoffee/android/ui/CardItemDecorator;
    .end local v1    # "isTabletDecorator":Z
    .end local v2    # "pad":I
    .end local v3    # "usableRecyclerView":Lme/grishka/appkit/views/UsableRecyclerView;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isTabletDecorator":Z
    goto :goto_0

    .line 76
    .restart local v0    # "decorator":Lcom/vkcoffee/android/ui/CardItemDecorator;
    .restart local v3    # "usableRecyclerView":Lme/grishka/appkit/views/UsableRecyclerView;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "pad":I
    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lcom/vkcoffee/android/fragments/CardRecyclerFragment;, "Lcom/vkcoffee/android/fragments/CardRecyclerFragment<TT;>;"
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onDestroyView()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->decorator:Lcom/vkcoffee/android/ui/CardItemDecorator;

    .line 56
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    .local p0, "this":Lcom/vkcoffee/android/fragments/CardRecyclerFragment;, "Lcom/vkcoffee/android/fragments/CardRecyclerFragment<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->setScrollBarStyle(I)V

    .line 36
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->updateDecorator()V

    .line 37
    return-void
.end method

.method protected updateDecorator()V
    .locals 4

    .prologue
    .line 46
    .local p0, "this":Lcom/vkcoffee/android/fragments/CardRecyclerFragment;, "Lcom/vkcoffee/android/fragments/CardRecyclerFragment<TT;>;"
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->decorator:Lcom/vkcoffee/android/ui/CardItemDecorator;

    invoke-virtual {v2, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 47
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    .line 48
    .local v1, "usableRecyclerView":Lme/grishka/appkit/views/UsableRecyclerView;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onCreateCardDecorator()Lcom/vkcoffee/android/ui/CardItemDecorator;

    move-result-object v0

    .line 49
    .local v0, "onCreateCardDecorator":Lcom/vkcoffee/android/ui/CardItemDecorator;
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->decorator:Lcom/vkcoffee/android/ui/CardItemDecorator;

    .line 50
    invoke-virtual {v1, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 51
    return-void
.end method
