.class Lcom/vkcoffee/android/fragments/PostViewFragment$4;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$4;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/PostViewFragment$4;)Lcom/vkcoffee/android/fragments/PostViewFragment;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$4;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    return-object v0
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "view1"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 686
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$4;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$4;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$15(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/ui/WriteBar;

    move-result-object v2

    const v3, 0x7f100436

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 687
    .local v0, "menu":Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const-string v2, "\u0417\u0430\u0448\u0438\u0444\u0440\u043e\u0432\u0430\u0442\u044c \u0438 \u043e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c"

    invoke-interface {v1, v4, v4, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 691
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$4;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v1

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    neg-int v1, v1

    invoke-static {v1}, Lcom/vkcoffee/android/data/Groups;->getAdminLevel(I)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 692
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f080433

    invoke-interface {v1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 696
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/fragments/PostViewFragment$4$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/PostViewFragment$4$1;-><init>(Lcom/vkcoffee/android/fragments/PostViewFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 729
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 730
    return v5
.end method
