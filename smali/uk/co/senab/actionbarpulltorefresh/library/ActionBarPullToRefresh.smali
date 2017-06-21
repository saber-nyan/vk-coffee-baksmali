.class public Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh;
.super Ljava/lang/Object;
.source "ActionBarPullToRefresh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static from(Landroid/app/Activity;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    new-instance v0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;-><init>(Landroid/app/Activity;Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$1;)V

    return-object v0
.end method
