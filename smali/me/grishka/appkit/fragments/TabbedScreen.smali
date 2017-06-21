.class public interface abstract Lme/grishka/appkit/fragments/TabbedScreen;
.super Ljava/lang/Object;
.source "TabbedScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/grishka/appkit/fragments/TabbedScreen$Delegate;
    }
.end annotation


# virtual methods
.method public abstract addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
.end method

.method public abstract addTab(ILandroid/app/Fragment;Ljava/lang/CharSequence;)V
.end method

.method public abstract getPagerCurrentItem()I
.end method

.method public abstract getTabAt(I)Landroid/app/Fragment;
.end method

.method public abstract getTabView()Landroid/view/View;
.end method

.method public abstract getTabsCount()I
.end method

.method public abstract invalidateTabTitles()V
.end method

.method public abstract isSwipeEnabled()Z
.end method

.method public abstract removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
.end method

.method public abstract removeTab(I)V
.end method

.method public abstract removeTab(Landroid/app/Fragment;)V
.end method

.method public abstract setPagerCurrentItem(I)V
.end method

.method public abstract setPagerCurrentItem(IZ)V
.end method

.method public abstract setSwipeEnabled(Z)V
.end method

.method public abstract setTabTitle(ILjava/lang/CharSequence;)V
.end method

.method public abstract setTabs(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTabsAutoLoad(Z)V
.end method

.method public abstract setTabsLayout(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
.end method

.method public abstract setTabsVisible(Z)V
.end method
