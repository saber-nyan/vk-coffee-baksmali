.class public abstract Lcom/vkcoffee/android/fragments/SuggestionsFragment;
.super Landroid/app/DialogFragment;
.source "SuggestionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/SuggestionsFragment$UserPhotosAdapter;,
        Lcom/vkcoffee/android/fragments/SuggestionsFragment$UsersAdapter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private adapter:Landroid/widget/BaseAdapter;

.field private error:Lcom/vkcoffee/android/ui/ErrorView;

.field private firstLoad:Z

.field protected imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

.field protected list:Landroid/widget/ListView;

.field private needUpdateFriends:Z

.field private needUpdateGroups:Z

.field protected progress:Landroid/widget/ProgressBar;

.field protected users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->users:Ljava/util/ArrayList;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->firstLoad:Z

    .line 48
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->needUpdateFriends:Z

    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->needUpdateGroups:Z

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/fragments/SuggestionsFragment;)Lcom/vkcoffee/android/ui/ErrorView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->error:Lcom/vkcoffee/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/SuggestionsFragment;)Landroid/widget/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/SuggestionsFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->adapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method


# virtual methods
.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UsersAdapter;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UsersAdapter;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFragment;)V

    return-object v0
.end method

.method protected getImageLoaderAdapter()Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UserPhotosAdapter;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UserPhotosAdapter;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFragment;)V

    return-object v0
.end method

.method protected abstract getListTitle()Ljava/lang/String;
.end method

.method protected abstract loadData()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->loadData()V

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v11, 0x42200000    # 40.0f

    const/high16 v10, 0x41400000    # 12.0f

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 60
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    .local v2, "wrap":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    .line 64
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->getListTitle()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "listTitle":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 66
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 67
    .local v1, "txt":Landroid/widget/TextView;
    const v3, -0x868380

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 69
    invoke-static {}, Lcom/vkcoffee/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 72
    invoke-static {v10}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    invoke-static {v10}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 73
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3, v1, v9, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 76
    .end local v1    # "txt":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->adapter:Landroid/widget/BaseAdapter;

    .line 77
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 79
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    new-instance v4, Lcom/vkcoffee/android/fragments/SuggestionsFragment$1;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment$1;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 89
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 90
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 92
    const v3, 0x7f030083

    invoke-virtual {p1, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/ui/ErrorView;

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->error:Lcom/vkcoffee/android/ui/ErrorView;

    .line 93
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->error:Lcom/vkcoffee/android/ui/ErrorView;

    invoke-virtual {v3, v8}, Lcom/vkcoffee/android/ui/ErrorView;->setVisibility(I)V

    .line 94
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->error:Lcom/vkcoffee/android/ui/ErrorView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 95
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->error:Lcom/vkcoffee/android/ui/ErrorView;

    new-instance v4, Lcom/vkcoffee/android/fragments/SuggestionsFragment$2;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment$2;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFragment;)V

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->progress:Landroid/widget/ProgressBar;

    .line 105
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->progress:Landroid/widget/ProgressBar;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v11}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    invoke-static {v11}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v6

    const/16 v7, 0x11

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->firstLoad:Z

    if-eqz v3, :cond_1

    .line 107
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 112
    :goto_0
    new-instance v3, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->getImageLoaderAdapter()Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-direct {v3, v4, v5, v6, v9}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;-><init>(Landroid/content/Context;Lme/grishka/appkit/imageloader/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;)V

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    .line 114
    iput-object v2, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->view:Landroid/view/View;

    .line 115
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->view:Landroid/view/View;

    return-object v3

    .line 109
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 129
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->view:Landroid/view/View;

    .line 130
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->adapter:Landroid/widget/BaseAdapter;

    .line 131
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    .line 132
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->progress:Landroid/widget/ProgressBar;

    .line 133
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->error:Lcom/vkcoffee/android/ui/ErrorView;

    .line 134
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->deactivate()V

    .line 137
    :cond_0
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    .line 138
    return-void
.end method

.method protected onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->error:Lcom/vkcoffee/android/ui/ErrorView;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->error:Lcom/vkcoffee/android/ui/ErrorView;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->error:Lcom/vkcoffee/android/ui/ErrorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 124
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected abstract onItemClick(IJLjava/lang/Object;)V
.end method

.method protected onSubscribeClick(I)V
    .locals 5
    .param p1, "pos"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x2

    .line 164
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .line 165
    .local v1, "p":Lcom/vkcoffee/android/UserProfile;
    iget v2, v1, Lcom/vkcoffee/android/UserProfile;->online:I

    if-eq v2, v4, :cond_0

    iget v2, v1, Lcom/vkcoffee/android/UserProfile;->online:I

    if-ne v2, v3, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget v2, v1, Lcom/vkcoffee/android/UserProfile;->online:I

    if-nez v2, :cond_2

    .line 170
    iput v4, v1, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 171
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 172
    const/4 v0, 0x1

    .line 178
    .local v0, "needSubscribe":Z
    :goto_1
    new-instance v2, Lcom/vkcoffee/android/api/execute/SetSubscriptionStatus;

    iget v3, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v2, v3, v0}, Lcom/vkcoffee/android/api/execute/SetSubscriptionStatus;-><init>(IZ)V

    new-instance v3, Lcom/vkcoffee/android/fragments/SuggestionsFragment$3;

    .line 179
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment$3;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFragment;Landroid/content/Context;Lcom/vkcoffee/android/UserProfile;Z)V

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/execute/SetSubscriptionStatus;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 194
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 174
    .end local v0    # "needSubscribe":Z
    :cond_2
    iput v3, v1, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 175
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 176
    const/4 v0, 0x0

    .restart local v0    # "needSubscribe":Z
    goto :goto_1
.end method

.method protected updateList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 141
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->adapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->imgLoader:Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;->updateImages()V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 148
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "items="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->firstLoad:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->progress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->list:Landroid/widget/ListView;

    invoke-static {v0, v4}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 151
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 152
    iput-boolean v4, p0, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->firstLoad:Z

    .line 155
    :cond_2
    return-void
.end method
