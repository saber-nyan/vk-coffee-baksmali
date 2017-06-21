.class Lcom/vkcoffee/android/GameCardActivity$Adapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "GameCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/GameCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/GameCardActivity;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/GameCardActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/vkcoffee/android/GameCardActivity;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/vkcoffee/android/GameCardActivity$Adapter;->this$0:Lcom/vkcoffee/android/GameCardActivity;

    .line 439
    invoke-virtual {p1}, Lcom/vkcoffee/android/GameCardActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 440
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity$Adapter;->this$0:Lcom/vkcoffee/android/GameCardActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/GameCardActivity;->access$000(Lcom/vkcoffee/android/GameCardActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 444
    new-instance v2, Lcom/vkcoffee/android/fragments/GameCardFragment;

    invoke-direct {v2}, Lcom/vkcoffee/android/fragments/GameCardFragment;-><init>()V

    .line 445
    .local v2, "fragment":Lcom/vkcoffee/android/fragments/GameCardFragment;
    iget-object v4, p0, Lcom/vkcoffee/android/GameCardActivity$Adapter;->this$0:Lcom/vkcoffee/android/GameCardActivity;

    invoke-virtual {v4}, Lcom/vkcoffee/android/GameCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 446
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "visitSource"

    const-string/jumbo v5, "direct"

    invoke-static {v0, v4, v5}, Lcom/vkcoffee/android/utils/Utils;->readString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, "vs":Ljava/lang/String;
    const-string/jumbo v4, "clickSource"

    const-string/jumbo v5, "catalog"

    invoke-static {v0, v4, v5}, Lcom/vkcoffee/android/utils/Utils;->readString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "cs":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkcoffee/android/GameCardActivity$Adapter;->this$0:Lcom/vkcoffee/android/GameCardActivity;

    invoke-static {v4}, Lcom/vkcoffee/android/GameCardActivity;->access$000(Lcom/vkcoffee/android/GameCardActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/data/ApiApplication;

    invoke-static {v4, p1, v3, v1}, Lcom/vkcoffee/android/fragments/GameCardFragment;->createArgs(Lcom/vkcoffee/android/data/ApiApplication;ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/vkcoffee/android/fragments/GameCardFragment;->setArguments(Landroid/os/Bundle;)V

    .line 449
    iget-object v4, p0, Lcom/vkcoffee/android/GameCardActivity$Adapter;->this$0:Lcom/vkcoffee/android/GameCardActivity;

    invoke-virtual {v2, v4}, Lcom/vkcoffee/android/fragments/GameCardFragment;->setOnListViewCreated(Lcom/vkcoffee/android/fragments/GameCardFragment$IOnListViewCreated;)V

    .line 450
    return-object v2
.end method

.method synthetic lambda$notifyDataSetChanged$624()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/vkcoffee/android/GameCardActivity$Adapter;->this$0:Lcom/vkcoffee/android/GameCardActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/GameCardActivity;->access$700(Lcom/vkcoffee/android/GameCardActivity;)Lcom/vkcoffee/android/ui/widget/PageIndicator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/GameCardActivity$Adapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/widget/PageIndicator;->setCountOfPages(I)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 469
    invoke-super {p0}, Landroid/support/v13/app/FragmentPagerAdapter;->notifyDataSetChanged()V

    .line 470
    invoke-static {p0}, Lcom/vkcoffee/android/GameCardActivity$Adapter$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/GameCardActivity$Adapter;)Ljava/lang/Runnable;

    move-result-object v0

    .line 471
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity$Adapter;->this$0:Lcom/vkcoffee/android/GameCardActivity;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/GameCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 472
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 455
    invoke-super {p0, p1, p2, p3}, Landroid/support/v13/app/FragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 456
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 457
    check-cast v0, Lcom/vkcoffee/android/fragments/GameCardFragment;

    .line 458
    .local v0, "fragment":Lcom/vkcoffee/android/fragments/GameCardFragment;
    iget-object v1, p0, Lcom/vkcoffee/android/GameCardActivity$Adapter;->this$0:Lcom/vkcoffee/android/GameCardActivity;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/GameCardFragment;->setOnListViewCreated(Lcom/vkcoffee/android/fragments/GameCardFragment$IOnListViewCreated;)V

    .line 460
    .end local v0    # "fragment":Lcom/vkcoffee/android/fragments/GameCardFragment;
    :cond_0
    return-void
.end method
