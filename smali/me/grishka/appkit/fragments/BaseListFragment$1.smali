.class Lme/grishka/appkit/fragments/BaseListFragment$1;
.super Ljava/lang/Object;
.source "BaseListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/fragments/BaseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/grishka/appkit/fragments/BaseListFragment;


# direct methods
.method constructor <init>(Lme/grishka/appkit/fragments/BaseListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lme/grishka/appkit/fragments/BaseListFragment;

    .prologue
    .line 47
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment$1;, "Lme/grishka/appkit/fragments/BaseListFragment$1;"
    iput-object p1, p0, Lme/grishka/appkit/fragments/BaseListFragment$1;->this$0:Lme/grishka/appkit/fragments/BaseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment$1;, "Lme/grishka/appkit/fragments/BaseListFragment$1;"
    const/4 v1, 0x0

    .line 55
    iget-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment$1;->this$0:Lme/grishka/appkit/fragments/BaseListFragment;

    iget-object v2, v2, Lme/grishka/appkit/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment$1;->this$0:Lme/grishka/appkit/fragments/BaseListFragment;

    iget-object v2, v2, Lme/grishka/appkit/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    .line 56
    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 58
    .local v0, "topRowVerticalPosition":I
    :goto_0
    iget-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment$1;->this$0:Lme/grishka/appkit/fragments/BaseListFragment;

    iget-object v2, v2, Lme/grishka/appkit/fragments/BaseListFragment;->refreshLayout:Lme/grishka/appkit/views/SwipeRefreshLayoutI;

    if-nez p2, :cond_1

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v2, v1}, Lme/grishka/appkit/views/SwipeRefreshLayoutI;->setEnabled(Z)V

    .line 59
    return-void

    .line 56
    .end local v0    # "topRowVerticalPosition":I
    :cond_2
    iget-object v2, p0, Lme/grishka/appkit/fragments/BaseListFragment$1;->this$0:Lme/grishka/appkit/fragments/BaseListFragment;

    iget-object v2, v2, Lme/grishka/appkit/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    .line 57
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "state"    # I

    .prologue
    .line 51
    .local p0, "this":Lme/grishka/appkit/fragments/BaseListFragment$1;, "Lme/grishka/appkit/fragments/BaseListFragment$1;"
    return-void
.end method
