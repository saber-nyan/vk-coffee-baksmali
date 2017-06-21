.class public Lcom/vkcoffee/android/fragments/SuggestionsRecommendationsFragment;
.super Lcom/vkcoffee/android/fragments/SuggestionsFragment;
.source "SuggestionsRecommendationsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method protected getListTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const v0, 0x7f080421

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/SuggestionsRecommendationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadData()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetSuggestedSources;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetSuggestedSources;-><init>()V

    new-instance v1, Lcom/vkcoffee/android/fragments/SuggestionsRecommendationsFragment$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/SuggestionsRecommendationsFragment$1;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsRecommendationsFragment;)V

    .line 30
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetSuggestedSources;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsRecommendationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 44
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/SuggestionsFragment;->onAttach(Landroid/app/Activity;)V

    .line 22
    instance-of v0, p1, Lcom/vkcoffee/android/SuggestionsActivity;

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsRecommendationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080159

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 25
    :cond_0
    return-void
.end method

.method protected onItemClick(IJLjava/lang/Object;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "id"    # J
    .param p4, "item"    # Ljava/lang/Object;

    .prologue
    .line 48
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    long-to-int v1, p2

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/SuggestionsRecommendationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 49
    return-void
.end method
