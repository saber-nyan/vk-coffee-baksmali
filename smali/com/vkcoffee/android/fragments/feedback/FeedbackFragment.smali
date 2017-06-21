.class public Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;
.super Lcom/vkcoffee/android/fragments/VKTabbedFragment;
.source "FeedbackFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VKTabbedFragment;-><init>()V

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;->setTabsAutoLoad(Z)V

    .line 20
    return-void
.end method

.method private cancelNotifications()V
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 42
    .local v0, "nm":Landroid/app/NotificationManager;
    const/16 v1, 0x1f6

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public hasNavigationDrawer()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x2

    .line 24
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/VKTabbedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 25
    const v2, 0x7f08017a

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;->setTitle(I)V

    .line 26
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;->cancelNotifications()V

    .line 28
    new-instance v0, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment$1;

    invoke-direct {v0, p0, v3}, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment$1;-><init>(Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;I)V

    .line 32
    .local v0, "tabs":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    new-instance v1, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment$2;

    invoke-direct {v1, p0, v3}, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment$2;-><init>(Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;I)V

    .line 37
    .local v1, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/feedback/FeedbackFragment;->setTabs(Ljava/util/List;Ljava/util/List;)V

    .line 38
    return-void
.end method
