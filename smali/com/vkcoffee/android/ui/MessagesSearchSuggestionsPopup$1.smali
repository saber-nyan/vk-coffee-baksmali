.class Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$1;
.super Ljava/lang/Object;
.source "MessagesSearchSuggestionsPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;-><init>(Lcom/vkcoffee/android/ui/SearchViewWrapper;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDecorator:Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

.field mLastWidth:I

.field final synthetic this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$1;->this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/high16 v9, 0x41000000    # 8.0f

    const/4 v6, 0x0

    .line 99
    iget-object v7, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$1;->this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v7}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->access$100(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Lme/grishka/appkit/views/UsableRecyclerView;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$1;->mLastWidth:I

    if-eq v7, v8, :cond_1

    .line 100
    iget-object v7, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$1;->this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v7}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->access$100(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Lme/grishka/appkit/views/UsableRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v4, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 101
    .local v4, "scrW":I
    const/16 v7, 0x39c

    if-lt v4, v7, :cond_2

    move v0, v5

    .line 103
    .local v0, "isTabletDecorator":Z
    :goto_0
    iget-object v7, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$1;->mDecorator:Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    if-nez v7, :cond_0

    .line 104
    new-instance v7, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    const/4 v8, 0x0

    if-nez v0, :cond_3

    :goto_1
    invoke-direct {v7, v8, v5}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;-><init>(Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;Z)V

    iput-object v7, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$1;->mDecorator:Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    .line 105
    iget-object v5, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$1;->this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->access$100(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v5

    iget-object v7, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$1;->mDecorator:Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    invoke-virtual {v5, v7}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 108
    :cond_0
    const/16 v5, 0x258

    if-lt v4, v5, :cond_4

    .line 109
    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    .line 116
    .local v2, "padding":I
    :goto_2
    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    add-int v3, v5, v2

    .line 117
    .local v3, "paddingTop":I
    if-eqz v0, :cond_6

    const/16 v5, 0x10

    add-int/lit16 v6, v4, -0x348

    add-int/lit8 v6, v6, -0x54

    div-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    .line 118
    .local v1, "margin":I
    :goto_3
    iget-object v5, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$1;->this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->access$100(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v5

    add-int v6, v1, v2

    add-int v7, v1, v2

    invoke-virtual {v5, v6, v3, v7, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 119
    iget-object v5, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$1;->mDecorator:Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    invoke-virtual {v5, v2, v3, v2, v2}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->setPadding(IIII)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    .line 120
    iget-object v5, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$1;->this$0:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v5}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->access$100(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v5

    invoke-virtual {v5}, Lme/grishka/appkit/views/UsableRecyclerView;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$1;->mLastWidth:I

    .line 122
    .end local v0    # "isTabletDecorator":Z
    .end local v1    # "margin":I
    .end local v2    # "padding":I
    .end local v3    # "paddingTop":I
    .end local v4    # "scrW":I
    :cond_1
    return-void

    .restart local v4    # "scrW":I
    :cond_2
    move v0, v6

    .line 101
    goto :goto_0

    .restart local v0    # "isTabletDecorator":Z
    :cond_3
    move v5, v6

    .line 104
    goto :goto_1

    .line 110
    :cond_4
    const/16 v5, 0x1e0

    if-lt v4, v5, :cond_5

    .line 111
    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    .restart local v2    # "padding":I
    goto :goto_2

    .line 113
    .end local v2    # "padding":I
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "padding":I
    goto :goto_2

    .restart local v3    # "paddingTop":I
    :cond_6
    move v1, v6

    .line 117
    goto :goto_3
.end method
