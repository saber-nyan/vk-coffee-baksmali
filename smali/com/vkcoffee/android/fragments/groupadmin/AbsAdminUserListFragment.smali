.class public abstract Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;
.super Lcom/vkcoffee/android/fragments/AbsUserListFragment;
.source "AbsAdminUserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$Holder;
    }
.end annotation


# instance fields
.field mAction:Lcom/vkcoffee/android/functions/VoidF2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF2",
            "<",
            "Landroid/view/View;",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/AbsUserListFragment;-><init>()V

    .line 20
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;)Lcom/vkcoffee/android/functions/VoidF2;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;->mAction:Lcom/vkcoffee/android/functions/VoidF2;

    .line 48
    return-void
.end method


# virtual methods
.method protected getColumnsCount()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreateCardDecorator()Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 33
    new-instance v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;->isTablet:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-direct {v0, v6, v4}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;-><init>(Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;Z)V

    .line 35
    .local v0, "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    iget v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;->scrW:I

    const/16 v6, 0x400

    if-lt v4, v6, :cond_1

    .line 36
    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    .line 41
    .local v2, "padding":I
    :goto_1
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    add-int v3, v4, v2

    .line 42
    .local v3, "paddingTop":I
    iget v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;->scrW:I

    const/16 v6, 0x39c

    if-lt v4, v6, :cond_2

    const/16 v4, 0x20

    iget v5, p0, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;->scrW:I

    add-int/lit16 v5, v5, -0x348

    add-int/lit8 v5, v5, -0x54

    div-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    .line 43
    .local v1, "margin":I
    :goto_2
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/AbsAdminUserListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    add-int v5, v1, v2

    add-int v6, v1, v2

    invoke-virtual {v4, v5, v3, v6, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 44
    invoke-virtual {v0, v2, v3, v2, v2}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->setPadding(IIII)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    .line 45
    return-object v0

    .end local v0    # "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .end local v1    # "margin":I
    .end local v2    # "padding":I
    .end local v3    # "paddingTop":I
    :cond_0
    move v4, v5

    .line 33
    goto :goto_0

    .line 38
    .restart local v0    # "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "padding":I
    goto :goto_1

    .restart local v3    # "paddingTop":I
    :cond_2
    move v1, v5

    .line 42
    goto :goto_2
.end method

.method public onItemButtonClick(Landroid/view/View;Lcom/vkcoffee/android/UserProfile;)V
    .locals 0
    .param p1, "button"    # Landroid/view/View;
    .param p2, "user"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 24
    return-void
.end method
