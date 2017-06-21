.class public Lcom/vkcoffee/android/fragments/PlaceholderFragment;
.super Lcom/vkcoffee/android/fragments/VKFragment;
.source "PlaceholderFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VKFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PlaceholderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/ui/EmptyView;->create(Landroid/content/Context;)Lcom/vkcoffee/android/ui/EmptyView;

    move-result-object v0

    .line 19
    .local v0, "v":Lcom/vkcoffee/android/ui/EmptyView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 20
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PlaceholderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PlaceholderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PlaceholderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/ui/EmptyView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PlaceholderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    .local v1, "wrap":Landroid/widget/FrameLayout;
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 27
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PlaceholderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 28
    return-object v1

    .line 23
    .end local v1    # "wrap":Landroid/widget/FrameLayout;
    :cond_0
    const v2, 0x7f08053d

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/ui/EmptyView;->setText(I)V

    goto :goto_0
.end method
