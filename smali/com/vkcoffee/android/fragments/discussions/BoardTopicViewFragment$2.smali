.class Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$2;
.super Ljava/lang/Object;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$2;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 427
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$2;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v3, 0x7f100433

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 428
    .local v1, "writeBar":Landroid/widget/EditText;
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$2;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$2;->this$0:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v4, 0x7f100436

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 430
    .local v0, "menu":Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const-string v3, "kB6jLLiGYFPoMezl7opiJg=="

    invoke-static {v3}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/Emoji;->parse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v5, v5, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 431
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const-string v3, "jgK1jr1O6ySCtdR/so8jTw=="

    invoke-static {v3}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/Emoji;->parse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v5, v6, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 432
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "sgDmD4nEKX2DlboNHvFdXQ=="

    invoke-static {v4}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/Emoji;->parse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v2, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 433
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x3

    const-string v4, "xxsQZL1MOwTfWJ55UCbw1g=="

    invoke-static {v4}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/Emoji;->parse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v2, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 434
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x4

    const-string v4, "QdWYEhgJI9AJcVyBrjByaw=="

    invoke-static {v4}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 437
    new-instance v2, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$2$1;

    invoke-direct {v2, p0, v1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$2$1;-><init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$2;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 464
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 469
    return v6
.end method
