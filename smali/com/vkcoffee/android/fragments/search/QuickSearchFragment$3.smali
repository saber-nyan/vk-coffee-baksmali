.class Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$3;
.super Lcom/vkcoffee/android/background/AsyncTask;
.source "QuickSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/background/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$3;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-direct {p0}, Lcom/vkcoffee/android/background/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 166
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$3;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 6
    .param p1, "args"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v3, "mFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-static {v3}, Lcom/vkcoffee/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 173
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    .line 174
    .local v2, "item":Lcom/vkcoffee/android/UserProfile;
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/vkcoffee/android/UserProfile;->isFriend:Z

    .line 175
    const/16 v4, 0x1e

    if-ge v1, v4, :cond_0

    .line 176
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$3;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->access$100(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v2    # "item":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$3;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->access$300(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Lcom/vkcoffee/android/ui/util/ListSegmenter;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$3;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->access$200(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/ui/util/ListSegmenter;->bind(Ljava/util/List;)Lcom/vkcoffee/android/ui/util/ListSegmenter;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/Group;>;"
    invoke-static {v0}, Lcom/vkcoffee/android/data/Groups;->getGroups(Ljava/util/ArrayList;)V

    .line 183
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 184
    new-instance v5, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/api/Group;

    invoke-direct {v5, v4}, Lcom/vkcoffee/android/UserProfile;-><init>(Lcom/vkcoffee/android/api/Group;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 187
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$3;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->access$400(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->bind(Ljava/util/List;)V

    .line 189
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$3;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->access$500(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)Lme/grishka/appkit/utils/Preloader;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lme/grishka/appkit/utils/Preloader;->setMoreAvailable(Z)V

    .line 190
    const/4 v4, 0x0

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 166
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$3;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "userProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$3;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->updateList()V

    .line 196
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$3;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->dataLoaded()V

    .line 197
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$3;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->refreshDone()V

    .line 198
    return-void
.end method
