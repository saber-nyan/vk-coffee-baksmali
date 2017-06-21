.class Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;
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
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    .line 3110
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1
    .param p1, "var1"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "var2"    # I

    .prologue
    .line 3112
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->timeAnchorPan:Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;

    invoke-static {v0, p2}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->onScrollStateChanged(Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;I)V

    .line 3113
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 9
    .param p1, "var1"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3115
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$8(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->delegate:Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;->getFirstVisiblePosition()I

    move-result p3

    .line 3116
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$8(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->delegate:Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/widget/VKRecyclerView$VKRecyclerViewDelegate;->getVisibleItemCount()I

    move-result v0

    .line 3117
    .local v0, "var4":I
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$8(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/widget/ChatRecyclerView;->getCount()I

    move-result p2

    .line 3118
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->timeAnchorPan:Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$4(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$43(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;->checkTimeAnchor(Lcom/vkcoffee/android/ui/widget/MessageTimeAnchorView;Lcom/vkcoffee/android/ui/adapters/MessagesAdapter;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$44(Lcom/vkcoffee/android/fragments/messages/ChatFragment;I)V

    .line 3119
    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$11(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$45(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$11(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$46(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$47(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3120
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$46(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3121
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1, v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$48(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    .line 3122
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1, v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$49(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    .line 3132
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$51(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityProgressBar(I)V

    .line 3133
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$51(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityLoadMoreButton(I)V

    .line 3136
    :cond_1
    add-int v1, p3, v0

    add-int/lit8 v2, p2, -0x1

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$52(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$52(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$53(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$54(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$27(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 3137
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$53(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3138
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1, v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$55(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    .line 3139
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1, v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$56(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    .line 3157
    :cond_4
    :goto_1
    return-void

    .line 3123
    :cond_5
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$26(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 3124
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$26(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$50(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/util/List;)V

    .line 3125
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$26(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3126
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1, v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$48(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    .line 3127
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1, v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$31(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    goto/16 :goto_0

    .line 3129
    :cond_6
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1, v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$31(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    goto/16 :goto_0

    .line 3140
    :cond_7
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$27(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 3141
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$27(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$57(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Ljava/util/List;)V

    .line 3142
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$27(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3143
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1, v6}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$55(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    .line 3144
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1, v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$31(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    .line 3145
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$58(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityProgressBar(I)V

    .line 3146
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$58(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityLoadMoreButton(I)V

    goto :goto_1

    .line 3147
    :cond_8
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$54(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3148
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1, v5}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$31(Lcom/vkcoffee/android/fragments/messages/ChatFragment;Z)V

    .line 3149
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$58(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityProgressBar(I)V

    .line 3150
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$58(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityLoadMoreButton(I)V

    goto/16 :goto_1

    .line 3152
    :cond_9
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$58(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityProgressBar(I)V

    .line 3153
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$20;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->access$58(Lcom/vkcoffee/android/fragments/messages/ChatFragment;)Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/vkcoffee/android/ui/holder/messages/LoadMoreHolder$LoaderMoreHolderData;->setVisibilityLoadMoreButton(I)V

    goto/16 :goto_1
.end method
