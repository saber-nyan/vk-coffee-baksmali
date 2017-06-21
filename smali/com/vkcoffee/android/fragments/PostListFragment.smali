.class public abstract Lcom/vkcoffee/android/fragments/PostListFragment;
.super Lcom/vkcoffee/android/fragments/CardRecyclerFragment;
.source "PostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/PostListFragment$ExpandTextClickListener;,
        Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;,
        Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/CardRecyclerFragment",
        "<",
        "Lcom/vkcoffee/android/NewsEntry;",
        ">;"
    }
.end annotation


# instance fields
.field protected adapter:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

.field private interpolator:Lcom/vkcoffee/android/ui/CubicBezierInterpolator;

.field protected items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ui/posts/PostDisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field lastCenterOwnerId:I

.field lastCenterPostId:I

.field protected menuClickListener:Landroid/view/View$OnClickListener;

.field protected offset:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field private runningAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field startTime:J


# direct methods
.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 136
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;-><init>(I)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    .line 89
    new-instance v1, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x3fe1eb851eb851ecL    # 0.56

    const-wide v6, 0x3fe2e147ae147ae1L    # 0.59

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;-><init>(DDDD)V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->interpolator:Lcom/vkcoffee/android/ui/CubicBezierInterpolator;

    .line 90
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostListFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 91
    iput v10, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->offset:I

    .line 92
    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/PostListFragment$1;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->runningAnims:Ljava/util/ArrayList;

    .line 262
    iput v10, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->lastCenterOwnerId:I

    .line 263
    iput v10, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->lastCenterPostId:I

    .line 264
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->startTime:J

    .line 137
    return-void
.end method

.method public constructor <init>(I)V
    .locals 11
    .param p1, "layoutId"    # I

    .prologue
    const/4 v10, 0x0

    .line 140
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;-><init>(II)V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    .line 89
    new-instance v1, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x3fe1eb851eb851ecL    # 0.56

    const-wide v6, 0x3fe2e147ae147ae1L    # 0.59

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v9}, Lcom/vkcoffee/android/ui/CubicBezierInterpolator;-><init>(DDDD)V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->interpolator:Lcom/vkcoffee/android/ui/CubicBezierInterpolator;

    .line 90
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostListFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 91
    iput v10, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->offset:I

    .line 92
    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/PostListFragment$1;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->runningAnims:Ljava/util/ArrayList;

    .line 262
    iput v10, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->lastCenterOwnerId:I

    .line 263
    iput v10, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->lastCenterPostId:I

    .line 264
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->startTime:J

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/PostListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/PostListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->preloadedData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/fragments/PostListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/fragments/PostListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/fragments/PostListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vkcoffee/android/fragments/PostListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vkcoffee/android/fragments/PostListFragment;)Lcom/vkcoffee/android/ui/CubicBezierInterpolator;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->interpolator:Lcom/vkcoffee/android/ui/CubicBezierInterpolator;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vkcoffee/android/fragments/PostListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vkcoffee/android/fragments/PostListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/vkcoffee/android/fragments/PostListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/vkcoffee/android/fragments/PostListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/PostListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/PostListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->preloadedData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$401(Lcom/vkcoffee/android/fragments/PostListFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PostListFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/PostListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->runningAnims:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/PostListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->animateItemsIn()V

    return-void
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/PostListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/PostListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/fragments/PostListFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/PostListFragment;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method private animateItemsIn()V
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-nez v0, :cond_0

    .line 924
    :goto_0
    return-void

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/PostListFragment$7;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/PostListFragment$7;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private attachExpandListeners(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/posts/PostDisplayItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/posts/PostDisplayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/posts/PostDisplayItem;>;"
    const/4 v7, 0x0

    .line 789
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    .line 790
    .local v0, "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    instance-of v3, v0, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 791
    check-cast v2, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

    .line 792
    .local v2, "text":Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;
    iget-object v3, v2, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;->text:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    .line 793
    iget-object v3, v2, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;->text:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    iget-object v5, v2, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;->text:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Lcom/vkcoffee/android/ExpandTextSpan;

    invoke-interface {v3, v7, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/vkcoffee/android/ExpandTextSpan;

    .line 794
    .local v1, "spans":[Lcom/vkcoffee/android/ExpandTextSpan;
    array-length v3, v1

    if-lez v3, :cond_0

    .line 795
    aget-object v3, v1, v7

    new-instance v5, Lcom/vkcoffee/android/fragments/PostListFragment$ExpandTextClickListener;

    invoke-direct {v5, p0, v2}, Lcom/vkcoffee/android/fragments/PostListFragment$ExpandTextClickListener;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;)V

    invoke-virtual {v3, v5}, Lcom/vkcoffee/android/ExpandTextSpan;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 800
    .end local v0    # "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    .end local v1    # "spans":[Lcom/vkcoffee/android/ExpandTextSpan;
    .end local v2    # "text":Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;
    :cond_1
    return-object p1
.end method

.method private hideNotInteresting(Lcom/vkcoffee/android/NewsEntry;)V
    .locals 3
    .param p1, "de"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    .line 676
    invoke-static {p1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedIgnoreItem;->canIgnore(Lcom/vkcoffee/android/NewsEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    new-instance v0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedIgnoreItem;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedIgnoreItem;-><init>(Lcom/vkcoffee/android/NewsEntry;)V

    new-instance v1, Lcom/vkcoffee/android/fragments/PostListFragment$4;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/vkcoffee/android/fragments/PostListFragment$4;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/content/Context;Lcom/vkcoffee/android/NewsEntry;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedIgnoreItem;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 688
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 690
    :cond_0
    return-void
.end method

.method private hideSource(Lcom/vkcoffee/android/NewsEntry;)V
    .locals 5
    .param p1, "de"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    const/4 v4, 0x0

    .line 693
    iget v2, p1, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    iget v2, p1, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_4

    .line 694
    :cond_0
    const/4 v1, 0x0

    .line 695
    .local v1, "data":Ljava/lang/String;
    iget-object v2, p1, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 696
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v3, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;

    if-eqz v3, :cond_1

    .line 697
    check-cast v0, Lcom/vkcoffee/android/attachments/ShitAttachment;

    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    iget-object v1, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->data:Ljava/lang/String;

    goto :goto_0

    .line 700
    :cond_2
    if-eqz v1, :cond_3

    .line 701
    new-instance v2, Lcom/vkcoffee/android/api/adsint/AdsintHideAd;

    invoke-direct {v2, v1}, Lcom/vkcoffee/android/api/adsint/AdsintHideAd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v4}, Lcom/vkcoffee/android/api/adsint/AdsintHideAd;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 702
    iget v2, p1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget v3, p1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {p0, v2, v3}, Lcom/vkcoffee/android/fragments/PostListFragment;->remove(II)V

    .line 740
    .end local v1    # "data":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 706
    :cond_4
    new-instance v2, Lcom/vkcoffee/android/api/newsfeed/NewsfeedAddBan;

    iget v3, p1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedAddBan;-><init>(I)V

    new-instance v3, Lcom/vkcoffee/android/fragments/PostListFragment$5;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4, p1}, Lcom/vkcoffee/android/fragments/PostListFragment$5;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/content/Context;Lcom/vkcoffee/android/NewsEntry;)V

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedAddBan;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 739
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_1
.end method

.method static synthetic lambda$performPostAction$338(Landroid/webkit/WebView;Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 651
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private performPostAction(Ljava/lang/String;Lcom/vkcoffee/android/NewsEntry;)V
    .locals 11
    .param p1, "act"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    .line 544
    const-string/jumbo v6, "instagram"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 545
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.VIEW"

    iget-object v8, p2, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v9, "post_source_url"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/fragments/PostListFragment;->startActivity(Landroid/content/Intent;)V

    .line 547
    :cond_0
    const-string/jumbo v6, "link"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 548
    const-string/jumbo v3, "http://vk.com/"

    .line 549
    .local v3, "ln":Ljava/lang/String;
    iget v6, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_8

    .line 550
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "wall"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v8, "parent_post"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "?reply="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 563
    :goto_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "clipboard"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 564
    .local v0, "cm":Landroid/text/ClipboardManager;
    invoke-virtual {v0, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 565
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f080290

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 567
    .end local v0    # "cm":Landroid/text/ClipboardManager;
    .end local v3    # "ln":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "hide_not_interesting"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 568
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/fragments/PostListFragment;->hideNotInteresting(Lcom/vkcoffee/android/NewsEntry;)V

    .line 570
    :cond_2
    const-string/jumbo v6, "hide"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 571
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/fragments/PostListFragment;->hideSource(Lcom/vkcoffee/android/NewsEntry;)V

    .line 573
    :cond_3
    const-string/jumbo v6, "orig"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 574
    const-string/jumbo v4, "wall"

    .line 575
    .local v4, "type":Ljava/lang/String;
    iget v6, p2, Lcom/vkcoffee/android/NewsEntry;->retweetType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 576
    const-string/jumbo v4, "photo"

    .line 578
    :cond_4
    iget v6, p2, Lcom/vkcoffee/android/NewsEntry;->retweetType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 579
    const-string/jumbo v4, "video"

    .line 581
    :cond_5
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "vkontakte://vk.com/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p2, Lcom/vkcoffee/android/NewsEntry;->retweetUID:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p2, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 583
    .end local v4    # "type":Ljava/lang/String;
    :cond_6
    const-string/jumbo v6, "edit"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 584
    const/16 v6, 0x20

    invoke-virtual {p2, v6}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 585
    iget-object v6, p2, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {p2, v6, v7}, Lcom/vkcoffee/android/data/Posts;->editRepostComment(Lcom/vkcoffee/android/NewsEntry;Ljava/lang/String;Landroid/app/Activity;)V

    .line 653
    :cond_7
    :goto_1
    return-void

    .line 552
    .restart local v3    # "ln":Ljava/lang/String;
    :cond_8
    iget v6, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eqz v6, :cond_9

    iget v6, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v7, 0xc

    if-ne v6, v7, :cond_b

    .line 553
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "wall"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 561
    :cond_a
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 554
    :cond_b
    iget v6, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_c

    .line 555
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "video"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 556
    :cond_c
    iget v6, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    .line 557
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "photo"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 558
    :cond_d
    iget v6, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_a

    .line 559
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "topic"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 588
    .end local v3    # "ln":Ljava/lang/String;
    :cond_e
    new-instance v6, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    invoke-direct {v6}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;-><init>()V

    .line 589
    invoke-virtual {v6, p2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->attachPost(Lcom/vkcoffee/android/NewsEntry;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    move-result-object v6

    const/16 v7, 0x800

    .line 590
    invoke-virtual {p2, v7}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->isPublic(Z)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    move-result-object v6

    .line 591
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->go(Landroid/content/Context;)V

    .line 598
    :cond_f
    const-string/jumbo v6, "del"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 599
    new-instance v6, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0800f4

    .line 600
    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f08011f

    .line 601
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0805c0

    invoke-static {p0, p2}, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostListFragment;Lcom/vkcoffee/android/NewsEntry;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v8

    .line 602
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0802d7

    const/4 v8, 0x0

    .line 605
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 606
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 608
    :cond_10
    const-string/jumbo v6, "report"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 609
    iget v6, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v7, 0xb

    if-eq v6, v7, :cond_11

    iget v6, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v7, 0xc

    if-ne v6, v7, :cond_16

    .line 610
    :cond_11
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/fragments/PostListFragment;->showReportAdDialog(Lcom/vkcoffee/android/NewsEntry;)V

    .line 626
    :cond_12
    :goto_3
    const-string/jumbo v6, "publish"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 627
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p2, v6, v7}, Lcom/vkcoffee/android/data/Posts;->publishPostponed(Lcom/vkcoffee/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 629
    :cond_13
    const-string/jumbo v6, "unsubscribe"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 630
    new-instance v6, Lcom/vkcoffee/android/api/newsfeed/NewsfeedUnsubscribe;

    iget v7, p2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget v8, p2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget v9, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    invoke-direct {v6, v7, v8, v9}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedUnsubscribe;-><init>(III)V

    new-instance v7, Lcom/vkcoffee/android/fragments/PostListFragment$3;

    .line 631
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, p0, v8, p2}, Lcom/vkcoffee/android/fragments/PostListFragment$3;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Landroid/content/Context;Lcom/vkcoffee/android/NewsEntry;)V

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedUnsubscribe;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v6

    .line 637
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v6

    .line 638
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 640
    :cond_14
    const-string/jumbo v6, "fix"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 641
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p2, v6, v7}, Lcom/vkcoffee/android/data/Posts;->toggleFixed(Lcom/vkcoffee/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 643
    :cond_15
    const-string/jumbo v6, "ads_debug"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 644
    new-instance v5, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 645
    .local v5, "wv":Landroid/webkit/WebView;
    iget-object v6, p2, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v7, "ads_debug"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "text/html"

    const-string/jumbo v8, "UTF-8"

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    new-instance v6, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v7, "Ads Debug"

    .line 647
    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 648
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0800dd

    const/4 v8, 0x0

    .line 649
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 650
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 651
    .local v1, "dlg":Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$7;->lambdaFactory$(Landroid/webkit/WebView;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_1

    .line 612
    .end local v1    # "dlg":Landroid/app/AlertDialog;
    .end local v5    # "wv":Landroid/webkit/WebView;
    :cond_16
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/vkcoffee/android/ReportContentActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 613
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "itemID"

    iget v7, p2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 614
    const-string/jumbo v6, "ownerID"

    iget v7, p2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 615
    const-string/jumbo v4, "post"

    .line 616
    .restart local v4    # "type":Ljava/lang/String;
    iget v6, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_17

    .line 617
    const-string/jumbo v4, "photo"

    .line 619
    :cond_17
    iget v6, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_18

    .line 620
    const-string/jumbo v4, "video"

    .line 622
    :cond_18
    const-string/jumbo v6, "type"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3
.end method

.method private showItemOptions(Landroid/view/View;Lcom/vkcoffee/android/NewsEntry;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "e"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    const/16 v10, 0x800

    const/4 v9, 0x0

    const/16 v8, 0xc

    const/4 v7, 0x5

    const/16 v6, 0xb

    .line 471
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_0

    .line 541
    :goto_0
    return-void

    .line 474
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eq v4, v7, :cond_2

    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_2

    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eq v4, v6, :cond_2

    .line 477
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080101

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    const-string/jumbo v4, "link"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    const/16 v4, 0x40

    invoke-virtual {p2, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v4, v5, :cond_1

    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->userID:I

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v4, v5, :cond_2

    .line 480
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080119

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    const-string/jumbo v4, "del"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_2
    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v4, v7, :cond_3

    iget-object v4, p2, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v5, "parent_post"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 485
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080101

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    const-string/jumbo v4, "link"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_3
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/fragments/PostListFragment;->canHideNotInterestingFromFeed(Lcom/vkcoffee/android/NewsEntry;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v4, v5, :cond_4

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    if-lez v4, :cond_4

    .line 489
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080268

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    const-string/jumbo v4, "hide_not_interesting"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_4
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->canHideFromFeed()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v4, v5, :cond_5

    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eq v4, v6, :cond_5

    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eq v4, v8, :cond_5

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    if-lez v4, :cond_5

    .line 493
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080267

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    const-string/jumbo v4, "hide"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_5
    const/16 v4, 0x20

    invoke-virtual {p2, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    if-lez v4, :cond_6

    .line 497
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0804e8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    const-string/jumbo v4, "orig"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_6
    const/16 v4, 0x80

    invoke-virtual {p2, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eq v4, v7, :cond_8

    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->time:I

    const v5, 0x15180

    add-int/2addr v4, v5

    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v5

    if-gt v4, v5, :cond_7

    const/16 v4, 0x1000

    invoke-virtual {p2, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    if-lez v4, :cond_8

    .line 501
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08013d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    const-string/jumbo v4, "edit"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_8
    invoke-virtual {p2, v10}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 505
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080419

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    const-string/jumbo v4, "publish"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_9
    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->platform:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_a

    .line 509
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080329

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    const-string/jumbo v4, "instagram"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_a
    const/high16 v4, 0x10000

    invoke-virtual {p2, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 513
    const/16 v4, 0x400

    invoke-virtual {p2, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_12

    const v4, 0x7f0803ae

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/PostListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    const-string/jumbo v4, "fix"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_b
    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eq v4, v6, :cond_c

    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v4, v8, :cond_d

    .line 517
    :cond_c
    const v4, 0x7f080266

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/PostListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    const-string/jumbo v4, "hide"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_d
    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    if-lez v4, :cond_f

    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->userID:I

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v4, v5, :cond_f

    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eqz v4, :cond_e

    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_e

    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_e

    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eq v4, v6, :cond_e

    iget v4, p2, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-ne v4, v8, :cond_f

    :cond_e
    const/16 v4, 0x1000

    invoke-virtual {p2, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {p2, v10}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-nez v4, :cond_f

    .line 521
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080435

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    const-string/jumbo v4, "report"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_f
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->canUnsubscribe()Z

    move-result v4

    if-eqz v4, :cond_10

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    if-lez v4, :cond_10

    .line 525
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800f1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    const-string/jumbo v4, "unsubscribe"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_10
    iget-object v4, p2, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    if-eqz v4, :cond_11

    iget-object v4, p2, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v5, "ads_debug"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 529
    const-string/jumbo v4, "Ads Debug"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    const-string/jumbo v4, "ads_debug"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_11
    new-instance v3, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 533
    .local v3, "pm":Landroid/widget/PopupMenu;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_13

    .line 534
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v5, v9, v1, v9, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 513
    .end local v1    # "i":I
    .end local v3    # "pm":Landroid/widget/PopupMenu;
    :cond_12
    const v4, 0x7f0803a6

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/PostListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 536
    .restart local v1    # "i":I
    .restart local v3    # "pm":Landroid/widget/PopupMenu;
    :cond_13
    invoke-static {p0, v0, p2}, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostListFragment;Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsEntry;)Landroid/widget/PopupMenu$OnMenuItemClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 540
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0
.end method

.method private showReportAdDialog(Lcom/vkcoffee/android/NewsEntry;)V
    .locals 3
    .param p1, "e"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    .line 656
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080435

    .line 657
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-static {p0, p1}, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$8;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostListFragment;Lcom/vkcoffee/android/NewsEntry;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 658
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 671
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 673
    return-void
.end method


# virtual methods
.method protected canAddPost(Lcom/vkcoffee/android/NewsEntry;)Z
    .locals 1
    .param p1, "post"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method protected canHideFromFeed()Z
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method protected canHideNotInterestingFromFeed(Lcom/vkcoffee/android/NewsEntry;)Z
    .locals 1
    .param p1, "entry"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method protected canUnsubscribe()Z
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method protected convertItemsIndexToReal(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1127
    return p1
.end method

.method protected bridge synthetic getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->adapter:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/PostListFragment$NewsAdapter;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->adapter:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->adapter:Lme/grishka/appkit/views/UsableRecyclerView$Adapter;

    return-object v0
.end method

.method protected abstract getListReferrer()Ljava/lang/String;
.end method

.method protected getPostsOffset()I
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getReferer()Ljava/lang/String;
.end method

.method protected isAutoload()Z
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "no_autoload"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isFeedbackStyle()Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method protected isPhotosMode()Z
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$new$333(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/fragments/PostListFragment;->showItemOptions(Landroid/view/View;Lcom/vkcoffee/android/NewsEntry;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$334(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->scrollToPosition(I)V

    .line 197
    :cond_0
    return-void
.end method

.method synthetic lambda$onViewCreated$335(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "view1"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 201
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v7, p1}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildViewHolder(Landroid/view/View;)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v0

    .line 202
    .local v0, "_holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v7, v0, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    if-nez v7, :cond_1

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-virtual {p2, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 232
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, v0

    .line 206
    check-cast v4, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    .line 207
    .local v4, "holder":Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    iput v7, p2, Landroid/graphics/Rect;->left:I

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    iput v7, p2, Landroid/graphics/Rect;->right:I

    .line 209
    if-eqz v4, :cond_0

    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, "foundFirst":Z
    const/4 v6, 0x0

    .line 212
    .local v6, "insidePost":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v7}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_6

    .line 213
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v8, v5}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildViewHolder(Landroid/view/View;)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v3

    .line 214
    .local v3, "hh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v7, v3, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    if-nez v7, :cond_3

    .line 212
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 217
    check-cast v2, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;

    .line 218
    .local v2, "h":Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;
    if-nez v1, :cond_4

    iget-object v7, v2, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    iget v7, v7, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postID:I

    iget-object v8, v4, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    iget v8, v8, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postID:I

    if-ne v7, v8, :cond_4

    iget-object v7, v2, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    iget v7, v7, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postOwnerID:I

    iget-object v8, v4, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    iget v8, v8, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postOwnerID:I

    if-ne v7, v8, :cond_4

    .line 219
    const/4 v1, 0x1

    .line 220
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v7, v5}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p2, Landroid/graphics/Rect;->top:I

    .line 221
    const/4 v6, 0x1

    goto :goto_2

    .line 222
    :cond_4
    if-eqz v6, :cond_2

    iget-object v7, v2, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    iget v7, v7, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postID:I

    iget-object v8, v4, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    iget v8, v8, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postID:I

    if-ne v7, v8, :cond_5

    iget-object v7, v2, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    iget v7, v7, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postOwnerID:I

    iget-object v8, v4, Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    iget v8, v8, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postOwnerID:I

    if-eq v7, v8, :cond_2

    .line 223
    :cond_5
    const/4 v6, 0x0

    .line 224
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v7, v8}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    iput v7, p2, Landroid/graphics/Rect;->bottom:I

    .line 228
    .end local v2    # "h":Lcom/vkcoffee/android/fragments/PostListFragment$PostDisplayItemViewHolder;
    .end local v3    # "hh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_6
    if-eqz v6, :cond_0

    .line 229
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v7}, Lme/grishka/appkit/views/UsableRecyclerView;->getHeight()I

    move-result v7

    iput v7, p2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0
.end method

.method synthetic lambda$performPostAction$337(Lcom/vkcoffee/android/NewsEntry;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vkcoffee/android/data/Posts;->deletePost(Lcom/vkcoffee/android/NewsEntry;Landroid/app/Activity;)V

    .line 604
    return-void
.end method

.method synthetic lambda$showItemOptions$336(Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsEntry;Landroid/view/MenuItem;)Z
    .locals 1
    .param p3, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 537
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/vkcoffee/android/fragments/PostListFragment;->performPostAction(Ljava/lang/String;Lcom/vkcoffee/android/NewsEntry;)V

    .line 538
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$showReportAdDialog$339(Lcom/vkcoffee/android/NewsEntry;Landroid/content/DialogInterface;I)V
    .locals 6
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 659
    const/4 v1, 0x0

    .line 660
    .local v1, "data1":Ljava/lang/String;
    iget-object v2, p1, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 661
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v3, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;

    if-eqz v3, :cond_0

    .line 662
    check-cast v0, Lcom/vkcoffee/android/attachments/ShitAttachment;

    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    iget-object v1, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->data:Ljava/lang/String;

    goto :goto_0

    .line 666
    :cond_1
    if-eqz v1, :cond_2

    .line 667
    new-instance v2, Lcom/vkcoffee/android/api/adsint/AdsintReportAd;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0042

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p3

    invoke-direct {v2, v1, v3}, Lcom/vkcoffee/android/api/adsint/AdsintReportAd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v5}, Lcom/vkcoffee/android/api/adsint/AdsintReportAd;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 668
    iget v2, p1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget v3, p1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {p0, v2, v3}, Lcom/vkcoffee/android/fragments/PostListFragment;->remove(II)V

    .line 669
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080436

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 671
    :cond_2
    return-void
.end method

.method public onAppendItems(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/NewsEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 751
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/NewsEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 752
    .local v10, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/NewsEntry;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 753
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/NewsEntry;

    .line 754
    .local v0, "e":Lcom/vkcoffee/android/NewsEntry;
    iget v1, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 755
    :cond_0
    iget v1, v0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 756
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 759
    :cond_1
    iget-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/attachments/Attachment;

    .line 760
    .local v9, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v2, v9, Lcom/vkcoffee/android/attachments/ShitAttachment;

    if-eqz v2, :cond_2

    .line 761
    check-cast v9, Lcom/vkcoffee/android/attachments/ShitAttachment;

    .end local v9    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    invoke-virtual {v9}, Lcom/vkcoffee/android/attachments/ShitAttachment;->updateInstallationState()V

    goto :goto_1

    .line 765
    :cond_3
    iget-object v11, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->isPhotosMode()Z

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getReferer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->isFeedbackStyle()Z

    move-result v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->canHideFromFeed()Z

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getListReferrer()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/vkcoffee/android/data/Posts;->buildItems(Lcom/vkcoffee/android/NewsEntry;ZLjava/lang/String;ZZLandroid/view/View$OnClickListener;ZLjava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/fragments/PostListFragment;->attachExpandListeners(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 767
    .end local v0    # "e":Lcom/vkcoffee/android/NewsEntry;
    :cond_4
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    .line 167
    sget-object v0, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;->wall:Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;

    invoke-static {v0}, Lcom/vkcoffee/android/attachments/MarketAttachment;->setLastSource(Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;)V

    .line 169
    const v0, 0x7f0802f7

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/PostListFragment;->setEmptyText(I)V

    .line 171
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->isAutoload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->loadData()V

    .line 174
    :cond_0
    return-void
.end method

.method public onClearItems()V
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 807
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->updateList()V

    .line 808
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.vkcoffee.android.NEW_POST_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string/jumbo v1, "com.vkcoffee.android.POST_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string/jumbo v1, "com.vkcoffee.android.POST_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v1, "com.vkcoffee.android.POST_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string/jumbo v1, "com.vkcoffee.android.RELOAD_FEED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->receiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 153
    return-void
.end method

.method protected onDataLoaded(Ljava/util/List;Z)V
    .locals 10
    .param p2, "more"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/NewsEntry;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 812
    .local p1, "d":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/NewsEntry;>;"
    iget-boolean v7, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->refreshing:Z

    if-eqz v7, :cond_3

    .line 813
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v1, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v7}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 815
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v7, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 816
    .local v2, "c":Landroid/view/View;
    const v7, 0x7f100069

    invoke-virtual {v2, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 817
    .local v4, "id":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 814
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 820
    :cond_0
    const-string/jumbo v7, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v2, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 821
    .local v6, "oa":Landroid/animation/ObjectAnimator;
    new-instance v7, Lcom/vkcoffee/android/ui/HardwareLayerAnimatorListener;

    invoke-direct {v7}, Lcom/vkcoffee/android/ui/HardwareLayerAnimatorListener;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 822
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 824
    .end local v2    # "c":Landroid/view/View;
    .end local v4    # "id":Ljava/lang/String;
    .end local v6    # "oa":Landroid/animation/ObjectAnimator;
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 825
    .local v0, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 826
    const-wide/16 v8, 0xc8

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 827
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->runningAnims:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    new-instance v7, Lcom/vkcoffee/android/fragments/PostListFragment$6;

    invoke-direct {v7, p0, p1, p2}, Lcom/vkcoffee/android/fragments/PostListFragment$6;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;Ljava/util/List;Z)V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 835
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 843
    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    .end local v1    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v3    # "i":I
    :cond_2
    :goto_2
    return-void

    .line 837
    :cond_3
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    const/4 v5, 0x1

    .line 838
    .local v5, "needAnim":Z
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 839
    if-eqz v5, :cond_2

    .line 840
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->animateItemsIn()V

    goto :goto_2

    .line 837
    .end local v5    # "needAnim":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .line 820
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 157
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onDestroy()V

    .line 159
    :try_start_0
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 6

    .prologue
    .line 181
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "action_bar_container"

    const-string/jumbo v4, "id"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 182
    .local v0, "abId":I
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 183
    .local v1, "actionBarView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 184
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :cond_0
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onDetach()V

    .line 187
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 283
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onPause()V

    .line 284
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->pauseLookingCenterPost()V

    .line 285
    return-void
.end method

.method protected onPostDeleted(Lcom/vkcoffee/android/NewsEntry;)V
    .locals 0
    .param p1, "post"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    .line 335
    return-void
.end method

.method protected onPrependItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/NewsEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 771
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/NewsEntry;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/fragments/PostListFragment;->onPrependItems(Ljava/util/List;I)V

    .line 772
    return-void
.end method

.method protected onPrependItems(Ljava/util/List;I)V
    .locals 11
    .param p2, "positionToAdd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/NewsEntry;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/NewsEntry;>;"
    const/4 v8, 0x0

    .line 777
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .local v9, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ui/posts/PostDisplayItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/NewsEntry;

    .line 779
    .local v0, "e":Lcom/vkcoffee/android/NewsEntry;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->isPhotosMode()Z

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getReferer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->isFeedbackStyle()Z

    move-result v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->canHideFromFeed()Z

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getListReferrer()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v8}, Lcom/vkcoffee/android/data/Posts;->buildItems(Lcom/vkcoffee/android/NewsEntry;ZLjava/lang/String;ZZLandroid/view/View$OnClickListener;ZLjava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/fragments/PostListFragment;->attachExpandListeners(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 781
    .end local v0    # "e":Lcom/vkcoffee/android/NewsEntry;
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, p2, :cond_1

    .line 782
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v9}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 786
    :goto_1
    return-void

    .line 784
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v8, v9}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 289
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onResume()V

    .line 290
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/PostListFragment;->resumeLookingCenterPost(Lcom/vkcoffee/android/ui/posts/PostDisplayItem;)V

    .line 291
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/NewsEntry;

    .line 292
    .local v2, "e":Lcom/vkcoffee/android/NewsEntry;
    iget v5, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v6, 0xc

    if-ne v5, v6, :cond_0

    .line 293
    iget v5, v2, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    if-eqz v5, :cond_4

    iget v5, v2, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 294
    iget v4, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget v5, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {p0, v4, v5}, Lcom/vkcoffee/android/fragments/PostListFragment;->remove(II)V

    .line 300
    .end local v2    # "e":Lcom/vkcoffee/android/NewsEntry;
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/NewsEntry;

    .line 301
    .restart local v2    # "e":Lcom/vkcoffee/android/NewsEntry;
    iget v5, v2, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v6, 0xb

    if-ne v5, v6, :cond_2

    .line 302
    iget-object v5, v2, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 303
    .local v3, "itrtr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/attachments/Attachment;>;"
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 304
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/Attachment;

    .line 305
    .local v1, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v5, v1, Lcom/vkcoffee/android/attachments/ShitAttachment;

    if-eqz v5, :cond_3

    move-object v0, v1

    .line 306
    check-cast v0, Lcom/vkcoffee/android/attachments/ShitAttachment;

    .line 307
    .local v0, "a":Lcom/vkcoffee/android/attachments/ShitAttachment;
    invoke-virtual {v0}, Lcom/vkcoffee/android/attachments/ShitAttachment;->updateInstallationState()V

    .line 308
    iget v5, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->timeToLive:I

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->timeToLive:I

    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 309
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 297
    .end local v0    # "a":Lcom/vkcoffee/android/attachments/ShitAttachment;
    .end local v1    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v3    # "itrtr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/attachments/Attachment;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->updateList()V

    goto :goto_0

    .line 313
    .restart local v3    # "itrtr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/attachments/Attachment;>;"
    :cond_5
    iget-object v5, v2, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 314
    iget v4, v2, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget v5, v2, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {p0, v4, v5}, Lcom/vkcoffee/android/fragments/PostListFragment;->remove(II)V

    .line 319
    .end local v2    # "e":Lcom/vkcoffee/android/NewsEntry;
    .end local v3    # "itrtr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/attachments/Attachment;>;"
    :cond_6
    return-void
.end method

.method public onScrollStarted()V
    .locals 3

    .prologue
    .line 928
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onScrollStarted()V

    .line 929
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->runningAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 930
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->runningAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 931
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 933
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->runningAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 935
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 191
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 192
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostListFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->setDrawSelectorOnTop(Z)V

    .line 200
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/PostListFragment$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/fragments/PostListFragment;)Lme/grishka/appkit/views/UsableRecyclerView$SelectorBoundsProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->setSelectorBoundsProvider(Lme/grishka/appkit/views/UsableRecyclerView$SelectorBoundsProvider;)V

    .line 233
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v1, Lcom/vkcoffee/android/fragments/PostListFragment$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/PostListFragment$2;-><init>(Lcom/vkcoffee/android/fragments/PostListFragment;)V

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 260
    return-void
.end method

.method public pauseLookingCenterPost()V
    .locals 8

    .prologue
    .line 275
    iget v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->lastCenterOwnerId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->lastCenterPostId:I

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 276
    sget-object v0, Lcom/vkcoffee/android/data/Analytics;->viewPostTime:Lcom/vkcoffee/android/data/Analytics$ViewPostTime;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getListReferrer()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->lastCenterOwnerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->lastCenterPostId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->startTime:J

    sub-long/2addr v4, v6

    long-to-int v3, v4

    .line 276
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkcoffee/android/data/Analytics$ViewPostTime;->addTime(Ljava/lang/String;Ljava/lang/String;I)V

    .line 279
    :cond_0
    return-void
.end method

.method public prepend(Lcom/vkcoffee/android/NewsEntry;)V
    .locals 13
    .param p1, "e"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    const/4 v8, 0x0

    .line 384
    const/4 v11, 0x0

    .local v11, "itemPos":I
    const/4 v9, 0x0

    .line 385
    .local v9, "entryPos":I
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/NewsEntry;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    add-int/lit8 v9, v9, 0x1

    .line 387
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    .line 388
    .local v10, "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    iget v2, v10, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postID:I

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/NewsEntry;

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    if-eq v2, v0, :cond_1

    .line 394
    .end local v10    # "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v9, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 395
    iget v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->offset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->offset:I

    .line 396
    iget-object v12, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->isPhotosMode()Z

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getReferer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->isFeedbackStyle()Z

    move-result v3

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->canHideFromFeed()Z

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getListReferrer()Ljava/lang/String;

    move-result-object v7

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/vkcoffee/android/data/Posts;->buildItems(Lcom/vkcoffee/android/NewsEntry;ZLjava/lang/String;ZZLandroid/view/View$OnClickListener;ZLjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/PostListFragment;->attachExpandListeners(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v12, v11, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 397
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->updateList()V

    .line 398
    return-void

    .line 391
    .restart local v10    # "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 392
    goto :goto_0
.end method

.method public remove(II)V
    .locals 5
    .param p1, "oid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 401
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 402
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/ui/posts/PostDisplayItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 403
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    .line 404
    .local v1, "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    iget v3, v1, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postID:I

    if-ne v3, p2, :cond_0

    iget v3, v1, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postOwnerID:I

    if-ne v3, p1, :cond_0

    .line 405
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 408
    .end local v1    # "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/NewsEntry;

    .line 409
    .local v0, "e":Lcom/vkcoffee/android/NewsEntry;
    if-eqz p1, :cond_3

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-ne v4, p1, :cond_2

    :cond_3
    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    if-ne v4, p2, :cond_2

    .line 410
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 411
    iget v3, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->offset:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->offset:I

    .line 416
    .end local v0    # "e":Lcom/vkcoffee/android/NewsEntry;
    :cond_4
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->updateList()V

    .line 419
    return-void
.end method

.method public replace(Lcom/vkcoffee/android/NewsEntry;)V
    .locals 17
    .param p1, "ne"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    .line 442
    const/4 v11, 0x0

    .line 443
    .local v11, "i":I
    const/4 v12, -0x1

    .line 444
    .local v12, "insertAt":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 445
    .local v14, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/ui/posts/PostDisplayItem;>;"
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 446
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    .line 447
    .local v13, "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    iget v1, v13, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postID:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    if-ne v1, v2, :cond_1

    iget v1, v13, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postOwnerID:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-ne v1, v2, :cond_1

    .line 448
    const/4 v1, -0x1

    if-ne v12, v1, :cond_0

    .line 449
    move v12, v11

    .line 451
    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    .line 453
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 454
    goto :goto_0

    .line 455
    .end local v13    # "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    :cond_2
    const/4 v1, -0x1

    if-ne v12, v1, :cond_3

    .line 468
    :goto_1
    return-void

    .line 458
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->isPhotosMode()Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getReferer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->isFeedbackStyle()Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->canHideFromFeed()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkcoffee/android/fragments/PostListFragment;->menuClickListener:Landroid/view/View$OnClickListener;

    const/4 v7, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->getListReferrer()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v9}, Lcom/vkcoffee/android/data/Posts;->buildItems(Lcom/vkcoffee/android/NewsEntry;ZLjava/lang/String;ZZLandroid/view/View$OnClickListener;ZLjava/lang/String;I)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/PostListFragment;->attachExpandListeners(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 459
    const/4 v11, 0x0

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/NewsEntry;

    .line 461
    .local v10, "e":Lcom/vkcoffee/android/NewsEntry;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-eqz v2, :cond_4

    iget v2, v10, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-ne v2, v3, :cond_6

    :cond_4
    iget v2, v10, Lcom/vkcoffee/android/NewsEntry;->postID:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    if-ne v2, v3, :cond_6

    .line 462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v1, v11, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 467
    .end local v10    # "e":Lcom/vkcoffee/android/NewsEntry;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->updateList()V

    goto :goto_1

    .line 465
    .restart local v10    # "e":Lcom/vkcoffee/android/NewsEntry;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    .line 466
    goto :goto_2
.end method

.method public resumeLookingCenterPost(Lcom/vkcoffee/android/ui/posts/PostDisplayItem;)V
    .locals 2
    .param p1, "item"    # Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->startTime:J

    .line 268
    if-eqz p1, :cond_0

    .line 269
    iget v0, p1, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postOwnerID:I

    iput v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->lastCenterOwnerId:I

    .line 270
    iget v0, p1, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->postID:I

    iput v0, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->lastCenterPostId:I

    .line 272
    :cond_0
    return-void
.end method

.method public update(IIIIIZZ)V
    .locals 4
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "likes"    # I
    .param p4, "comments"    # I
    .param p5, "retweets"    # I
    .param p6, "liked"    # Z
    .param p7, "retweeted"    # Z

    .prologue
    const/4 v3, -0x1

    .line 422
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/NewsEntry;

    .line 423
    .local v0, "e":Lcom/vkcoffee/android/NewsEntry;
    if-eqz p1, :cond_1

    iget v2, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-ne v2, p1, :cond_0

    :cond_1
    iget v2, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    if-ne v2, p2, :cond_0

    .line 424
    iput p3, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 425
    if-eq p4, v3, :cond_2

    .line 426
    iput p4, v0, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    .line 428
    :cond_2
    if-eq p5, v3, :cond_3

    .line 429
    iput p5, v0, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    .line 431
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p6}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 432
    if-eq p5, v3, :cond_4

    .line 433
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p7}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 435
    :cond_4
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/PostListFragment;->updateList()V

    .line 439
    .end local v0    # "e":Lcom/vkcoffee/android/NewsEntry;
    :cond_5
    return-void
.end method

.method public updateList()V
    .locals 5

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "i":I
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PostListFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    .line 369
    .local v2, "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    instance-of v3, v2, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 370
    check-cast v3, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    iput v0, v3, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->listPosition:I

    move v0, v1

    .line 372
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    instance-of v3, v2, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    if-eqz v3, :cond_0

    .line 373
    check-cast v2, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    .end local v2    # "item":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iput v0, v2, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->listPosition:I

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 376
    :cond_2
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->updateList()V

    .line 377
    return-void
.end method

.method protected useFrom()Z
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method
