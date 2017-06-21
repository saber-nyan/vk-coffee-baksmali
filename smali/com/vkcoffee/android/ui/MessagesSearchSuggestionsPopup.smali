.class public Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;
.super Ljava/lang/Object;
.source "MessagesSearchSuggestionsPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$DropDownListView;,
        Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;
    }
.end annotation


# static fields
.field private static index:Lcom/vkcoffee/android/SearchIndexer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/SearchIndexer",
            "<",
            "Lcom/vkcoffee/android/DialogEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapter:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;

.field private allowMsgs:Z

.field private c:Landroid/content/Context;

.field private emptyView:Landroid/widget/TextView;

.field private footerView:Landroid/widget/TextView;

.field private list:Lme/grishka/appkit/views/UsableRecyclerView;

.field private onItemClickListener:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private pendingSearch:Ljava/lang/Runnable;

.field private progress:Landroid/widget/ProgressBar;

.field private req:Lcom/vkcoffee/android/api/VKAPIRequest;

.field private searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

.field private selListener:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;

.field private users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private wrap:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/vkcoffee/android/SearchIndexer;

    invoke-direct {v0}, Lcom/vkcoffee/android/SearchIndexer;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->index:Lcom/vkcoffee/android/SearchIndexer;

    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/ui/SearchViewWrapper;Landroid/content/Context;Z)V
    .locals 10
    .param p1, "s"    # Lcom/vkcoffee/android/ui/SearchViewWrapper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "allowMsgs"    # Z

    .prologue
    const/high16 v9, 0x41400000    # 12.0f

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/high16 v5, 0x42400000    # 48.0f

    const/16 v6, 0x11

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->users:Ljava/util/ArrayList;

    .line 61
    invoke-static {p0}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->onItemClickListener:Lcom/vkcoffee/android/functions/VoidF1;

    .line 83
    iput-boolean p3, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->allowMsgs:Z

    .line 84
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    .line 85
    iput-object p2, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->c:Landroid/content/Context;

    .line 86
    new-instance v1, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$DropDownListView;

    invoke-direct {v1, p0, p2}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$DropDownListView;-><init>(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    .line 87
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 88
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v2, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;-><init>(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$1;)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->adapter:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;

    invoke-virtual {v1, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 89
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const v2, 0x7f020101

    invoke-virtual {v1, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->setSelector(I)V

    .line 90
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1, v7}, Lme/grishka/appkit/views/UsableRecyclerView;->setClipToPadding(Z)V

    .line 92
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$1;-><init>(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 125
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    .line 126
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    const v2, 0x7f020101

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 128
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 129
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 130
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 131
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 132
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 133
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 134
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-virtual {v1, v2, v7, v3, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 135
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    const v2, -0xae7e48

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 139
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    if-eqz p3, :cond_0

    .line 142
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->addFooterView(Landroid/view/View;)V

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->onWindowFocusChanged(Z)V

    .line 146
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->emptyView:Landroid/widget/TextView;

    .line 147
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->emptyView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->c:Landroid/content/Context;

    const v3, 0x7f0c00ee

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 148
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 149
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->emptyView:Landroid/widget/TextView;

    const v2, 0x7f080304

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 151
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->progress:Landroid/widget/ProgressBar;

    .line 152
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    .line 155
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 156
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->emptyView:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->progress:Landroid/widget/ProgressBar;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;Lcom/vkcoffee/android/api/VKAPIRequest;)Lcom/vkcoffee/android/api/VKAPIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/VKAPIRequest;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->req:Lcom/vkcoffee/android/api/VKAPIRequest;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->users:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->updateList()V

    return-void
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->emptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->onItemClickListener:Lcom/vkcoffee/android/functions/VoidF1;

    return-object v0
.end method

.method private searchOnServer(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 210
    new-instance v0, Lcom/vkcoffee/android/api/messages/MessagesSearchDialogs;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/api/messages/MessagesSearchDialogs;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$2;-><init>(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/messages/MessagesSearchDialogs;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->req:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 235
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->req:Lcom/vkcoffee/android/api/VKAPIRequest;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->pendingSearch:Ljava/lang/Runnable;

    .line 237
    return-void
.end method

.method private updateList()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->adapter:Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$SuggestionsAdapter;->setData(Ljava/util/List;)V

    .line 241
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->updateImages()V

    .line 242
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method synthetic lambda$new$469(Lcom/vkcoffee/android/UserProfile;)V
    .locals 4
    .param p1, "p"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 62
    if-eqz p1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->selListener:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;

    if-eqz v1, :cond_1

    .line 65
    new-instance v0, Lcom/vkcoffee/android/DialogEntry;

    invoke-direct {v0}, Lcom/vkcoffee/android/DialogEntry;-><init>()V

    .line 66
    .local v0, "e":Lcom/vkcoffee/android/DialogEntry;
    iput-object p1, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    .line 67
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->selListener:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;

    invoke-interface {v1, v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;->onItemSelected(Lcom/vkcoffee/android/DialogEntry;)V

    .line 80
    .end local v0    # "e":Lcom/vkcoffee/android/DialogEntry;
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    new-instance v1, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    iget v2, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    iget-object v3, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;-><init>(ILjava/lang/String;)V

    iget-object v2, p1, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->setPhoto(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment$Builder;->go(Landroid/content/Context;)V

    .line 71
    invoke-static {p0}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/ViewUtils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->submitQuery()V

    goto :goto_0
.end method

.method synthetic lambda$new$470(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->onItemClickListener:Lcom/vkcoffee/android/functions/VoidF1;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/functions/VoidF1;->f(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$null$468()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->searchView:Lcom/vkcoffee/android/ui/SearchViewWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/SearchViewWrapper;->setExpanded(Z)V

    .line 75
    :cond_0
    return-void
.end method

.method synthetic lambda$updateQuery$471(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->searchOnServer(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 245
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 246
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 247
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 251
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelectionListener(Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;)V
    .locals 0
    .param p1, "sl"    # Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->selListener:Lcom/vkcoffee/android/fragments/messages/DialogsFragment$SelectionListener;

    .line 170
    return-void
.end method

.method public updateQuery(Ljava/lang/String;)V
    .locals 10
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 177
    const-string/jumbo v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update query "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v4, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v4, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 181
    iget-object v4, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->footerView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08045c

    new-array v7, v3, [Ljava/lang/Object;

    const-string/jumbo v8, "<"

    const-string/jumbo v9, "&lt;"

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v4, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 183
    iget-object v4, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->users:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/vkcoffee/android/data/Friends;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 184
    sget-object v4, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->index:Lcom/vkcoffee/android/SearchIndexer;

    invoke-virtual {v4, p1}, Lcom/vkcoffee/android/SearchIndexer;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 185
    .local v0, "dialogEntry":Lcom/vkcoffee/android/DialogEntry;
    iget-object v5, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->users:Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 186
    iget-object v5, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->users:Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    .end local v0    # "dialogEntry":Lcom/vkcoffee/android/DialogEntry;
    :cond_1
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->updateList()V

    .line 190
    iget-object v4, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->req:Lcom/vkcoffee/android/api/VKAPIRequest;

    if-eqz v4, :cond_2

    .line 191
    iget-object v4, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->req:Lcom/vkcoffee/android/api/VKAPIRequest;

    invoke-virtual {v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->cancel()V

    .line 192
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->req:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 194
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->pendingSearch:Ljava/lang/Runnable;

    if-eqz v4, :cond_3

    .line 195
    iget-object v4, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->pendingSearch:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lme/grishka/appkit/views/UsableRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 197
    :cond_3
    invoke-static {p0, p1}, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->pendingSearch:Ljava/lang/Runnable;

    .line 198
    iget-object v4, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->progress:Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v5}, Lme/grishka/appkit/views/UsableRecyclerView;->getCount()I

    move-result v5

    iget-boolean v6, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->allowMsgs:Z

    if-eqz v6, :cond_5

    :goto_1
    if-le v5, v3, :cond_6

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 199
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->pendingSearch:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Lme/grishka/appkit/views/UsableRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 202
    iget-object v1, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 207
    :cond_4
    :goto_3
    return-void

    :cond_5
    move v3, v2

    .line 198
    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2

    .line 205
    :cond_7
    iget-object v2, p0, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3
.end method

.method public updateSearchIndex()V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, "dialogEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/DialogEntry;>;"
    invoke-static {v0}, Lcom/vkcoffee/android/data/Messages;->getAllLoadedDialogs(Ljava/util/ArrayList;)V

    .line 165
    sget-object v1, Lcom/vkcoffee/android/ui/MessagesSearchSuggestionsPopup;->index:Lcom/vkcoffee/android/SearchIndexer;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/SearchIndexer;->bind(Ljava/util/List;)Lcom/vkcoffee/android/SearchIndexer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/SearchIndexer;->build()V

    .line 166
    return-void
.end method
