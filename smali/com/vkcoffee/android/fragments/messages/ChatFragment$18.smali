.class Lcom/vkcoffee/android/fragments/messages/ChatFragment$18;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field scrollState:I

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$18;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 3038
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 3040
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$18;->scrollState:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p1, "var1"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "var2"    # I

    .prologue
    .line 3043
    iput p2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$18;->scrollState:I

    .line 3044
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3
    .param p1, "var1"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .prologue
    .line 3046
    if-gez p3, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$18;->scrollState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3047
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$18;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/vk/attachpicker/util/KeyboardUtils;->hideKeyboard(Landroid/content/Context;)V

    .line 3050
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$18;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$40(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$18;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$40(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$18;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$41(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3052
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$18;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$8(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3053
    const/4 v0, 0x0

    .line 3058
    .local v0, "var4":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :goto_0
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v0    # "var4":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$18;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$6(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-lt v1, v2, :cond_1

    .line 3059
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$18;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$42(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V

    .line 3063
    :cond_1
    return-void

    .line 3055
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$18;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$8(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .restart local v0    # "var4":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    goto :goto_0
.end method
