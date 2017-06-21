.class public Lcom/vkcoffee/android/ui/NavigationSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NavigationSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 15
    .local p0, "this":Lcom/vkcoffee/android/ui/NavigationSpinnerAdapter;, "Lcom/vkcoffee/android/ui/NavigationSpinnerAdapter<TT;>;"
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0300e8

    invoke-direct {p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 16
    iput-object p1, p0, Lcom/vkcoffee/android/ui/NavigationSpinnerAdapter;->activity:Landroid/app/Activity;

    .line 17
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    .local p0, "this":Lcom/vkcoffee/android/ui/NavigationSpinnerAdapter;, "Lcom/vkcoffee/android/ui/NavigationSpinnerAdapter<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/NavigationSpinnerAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    invoke-super {p0, v0, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
