.class public Lcom/vkcoffee/android/ForwardMessageActivity;
.super Lcom/vkcoffee/android/VKActivity;
.source "ForwardMessageActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/vkcoffee/android/VKActivity;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$298(Lcom/vkcoffee/android/DialogEntry;)V
    .locals 4
    .param p1, "e"    # Lcom/vkcoffee/android/DialogEntry;

    .prologue
    const/4 v3, -0x1

    .line 36
    const-string/jumbo v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p0}, Lcom/vkcoffee/android/ForwardMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    invoke-static {v1}, Lcom/vkcoffee/android/data/Messages;->getShortcutIntent(Lcom/vkcoffee/android/UserProfile;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/vkcoffee/android/ForwardMessageActivity;->setResult(ILandroid/content/Intent;)V

    .line 38
    invoke-virtual {p0}, Lcom/vkcoffee/android/ForwardMessageActivity;->finish()V

    .line 45
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "profile"

    iget-object v2, p1, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v3, v0}, Lcom/vkcoffee/android/ForwardMessageActivity;->setResult(ILandroid/content/Intent;)V

    .line 43
    invoke-virtual {p0}, Lcom/vkcoffee/android/ForwardMessageActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    .local v2, "dialogsWrap":Landroid/widget/FrameLayout;
    const v3, 0x7f10001b

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 20
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ForwardMessageActivity;->setContentView(Landroid/view/View;)V

    .line 22
    const-string/jumbo v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p0}, Lcom/vkcoffee/android/ForwardMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23
    const v3, 0x7f080061

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ForwardMessageActivity;->setTitle(I)V

    .line 24
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/vkcoffee/android/ForwardMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, -0xc4a079

    invoke-virtual {v3, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 31
    :cond_0
    :goto_0
    new-instance v1, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-direct {v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;-><init>()V

    .line 32
    .local v1, "dialogs":Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "select"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    invoke-static {p0}, Lcom/vkcoffee/android/ForwardMessageActivity$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ForwardMessageActivity;)Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->setListener(Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;)V

    .line 47
    invoke-static {p0, v1}, Lcom/vkcoffee/android/ui/FragmentHelper;->replace(Landroid/app/Activity;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 48
    return-void

    .line 27
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "dialogs":Lcom/vkcoffee/android/fragments/messages/DialogsFragment;
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ForwardMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/vkcoffee/android/ForwardMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ForwardMessageActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 51
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/vkcoffee/android/ForwardMessageActivity;->onBackPressed()V

    .line 53
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
