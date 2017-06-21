.class public final Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;
.super Ljava/lang/Object;
.source "ActionBarPullToRefresh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetupWizard"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mOnRefreshListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;

.field private mOptions:Luk/co/senab/actionbarpulltorefresh/library/Options;

.field private mViewDelegates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mViewGroupToInsertInto:Landroid/view/ViewGroup;

.field private refreshableViewIds:[I

.field private refreshableViews:[Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->mActivity:Landroid/app/Activity;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/Activity;
    .param p2, "x1"    # Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private static insertLayoutIntoViewGroup(Landroid/view/ViewGroup;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;)V
    .locals 3
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "pullToRefreshLayout"    # Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, "child":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 127
    invoke-virtual {p1, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->addView(Landroid/view/View;)V

    .line 128
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0, p1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 133
    return-void
.end method


# virtual methods
.method public allChildrenArePullable()Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->refreshableViewIds:[I

    .line 57
    iput-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->refreshableViews:[Landroid/view/View;

    .line 58
    return-object p0
.end method

.method public insertLayoutInto(Landroid/view/ViewGroup;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 87
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->mViewGroupToInsertInto:Landroid/view/ViewGroup;

    .line 88
    return-object p0
.end method

.method public listener(Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;
    .locals 0
    .param p1, "listener"    # Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;

    .prologue
    .line 82
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->mOnRefreshListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;

    .line 83
    return-object p0
.end method

.method public options(Luk/co/senab/actionbarpulltorefresh/library/Options;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;
    .locals 0
    .param p1, "options"    # Luk/co/senab/actionbarpulltorefresh/library/Options;

    .prologue
    .line 51
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->mOptions:Luk/co/senab/actionbarpulltorefresh/library/Options;

    .line 52
    return-object p0
.end method

.method public setup(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;)V
    .locals 6
    .param p1, "pullToRefreshLayout"    # Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    .prologue
    .line 92
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->mOptions:Luk/co/senab/actionbarpulltorefresh/library/Options;

    invoke-virtual {p1, v3, v4}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->createPullToRefreshAttacher(Landroid/app/Activity;Luk/co/senab/actionbarpulltorefresh/library/Options;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;

    move-result-object v0

    .line 94
    .local v0, "attacher":Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->mOnRefreshListener:Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;

    invoke-virtual {v0, v3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->setOnRefreshListener(Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;)V

    .line 96
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->mViewGroupToInsertInto:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 97
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->mViewGroupToInsertInto:Landroid/view/ViewGroup;

    invoke-static {v3, p1}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->insertLayoutIntoViewGroup(Landroid/view/ViewGroup;Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;)V

    .line 100
    :cond_0
    invoke-virtual {p1, v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setPullToRefreshAttacher(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;)V

    .line 103
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->refreshableViewIds:[I

    if-eqz v3, :cond_1

    .line 104
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->refreshableViewIds:[I

    invoke-virtual {p1, v3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->addChildrenAsPullable([I)V

    .line 112
    :goto_0
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->mViewDelegates:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    .line 113
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->mViewDelegates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 114
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Class;Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 115
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;

    invoke-virtual {v0, v3, v4}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshAttacher;->useViewDelegate(Ljava/lang/Class;Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;)V

    goto :goto_1

    .line 105
    .end local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Class;Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;>;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;>;"
    :cond_1
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->refreshableViews:[Landroid/view/View;

    if-eqz v3, :cond_2

    .line 106
    iget-object v3, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->refreshableViews:[Landroid/view/View;

    invoke-virtual {p1, v3}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->addChildrenAsPullable([Landroid/view/View;)V

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->addAllChildrenAsPullable()V

    goto :goto_0

    .line 118
    :cond_3
    return-void
.end method

.method public varargs theseChildrenArePullable([I)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;
    .locals 1
    .param p1, "viewIds"    # [I

    .prologue
    .line 62
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->refreshableViewIds:[I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->refreshableViews:[Landroid/view/View;

    .line 64
    return-object p0
.end method

.method public varargs theseChildrenArePullable([Landroid/view/View;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;
    .locals 1
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 68
    iput-object p1, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->refreshableViews:[Landroid/view/View;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->refreshableViewIds:[I

    .line 70
    return-object p0
.end method

.method public useViewDelegate(Ljava/lang/Class;Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;
    .locals 1
    .param p2, "delegate"    # Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Luk/co/senab/actionbarpulltorefresh/library/viewdelegates/ViewDelegate;",
            ")",
            "Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->mViewDelegates:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->mViewDelegates:Ljava/util/HashMap;

    .line 77
    :cond_0
    iget-object v0, p0, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->mViewDelegates:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-object p0
.end method
