.class public Lcom/vkcoffee/android/fragments/VKFragment;
.super Landroid/app/DialogFragment;
.source "VKFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/FABHelper$OnOptionItemSelectedListener;


# instance fields
.field private subtitle:Ljava/lang/CharSequence;

.field private title:Ljava/lang/CharSequence;

.field private viewCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/VKFragment;->setUserVisibleHint(Z)V

    .line 27
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 31
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 32
    iput-boolean v3, p0, Lcom/vkcoffee/android/fragments/VKFragment;->viewCreated:Z

    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VKFragment;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "_dialog"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/VKFragment;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "_dialog"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VKFragment;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 40
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-static {}, Lcom/vkcoffee/android/ui/StubListAdapter;->getInstance()Lcom/vkcoffee/android/ui/StubListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 42
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 44
    :cond_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 46
    :cond_4
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/VKFragment;->subtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 47
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/VKFragment;->subtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 50
    :cond_5
    return-void
.end method

.method protected setSubtitle(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/VKFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/VKFragment;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method protected setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/VKFragment;->subtitle:Ljava/lang/CharSequence;

    .line 69
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/VKFragment;->viewCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    return-void
.end method

.method protected setTitle(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/VKFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/VKFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

.method protected setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/VKFragment;->title:Ljava/lang/CharSequence;

    .line 54
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/VKFragment;->viewCreated:Z

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "_dialog"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/VKFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    :cond_1
    return-void
.end method
