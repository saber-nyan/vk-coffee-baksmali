.class public Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;
.super Lcom/vkcoffee/android/fragments/base/SegmenterFragment;
.source "FriendsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/base/SegmenterFragment",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# static fields
.field protected static final SORT_FIRST:I = 0x1

.field protected static final SORT_HINTS:I = 0x0

.field protected static final SORT_LAST:I = 0x2


# instance fields
.field private bottomDividerDecoration:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

.field private fastScroller:Lcom/vkcoffee/android/ui/recyclerview/FastScroller;

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mBuildImportant:Z

.field private mBuildIndex:Z

.field private mCheckListener:Lcom/vkcoffee/android/functions/VoidF1Bool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1Bool",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mFastScrollerVisibility:Z

.field private mGlobalSearchEnabled:Z

.field private final mIndexer:Lcom/vkcoffee/android/ui/util/AlphabetSegmenter;

.field private mMultiselectListener:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSearchIndexer:Lcom/vkcoffee/android/ui/util/SearchSegmenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/ui/util/SearchSegmenter",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchMode:Z

.field private mSelectedUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionListener:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private sortPref:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 166
    const v1, 0x7fffffff

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;-><init>(I)V

    .line 53
    new-instance v1, Lcom/vkcoffee/android/ui/util/AlphabetSegmenter;

    invoke-direct {v1}, Lcom/vkcoffee/android/ui/util/AlphabetSegmenter;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mIndexer:Lcom/vkcoffee/android/ui/util/AlphabetSegmenter;

    .line 54
    new-instance v1, Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    new-instance v2, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$1;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)V

    invoke-static {}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$$Lambda$1;->lambdaFactory$()Lcom/vkcoffee/android/ui/util/SearchSegmenter$Generator;

    move-result-object v3

    const/16 v4, 0x32

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;-><init>(Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;Lcom/vkcoffee/android/ui/util/SearchSegmenter$Generator;I)V

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v3, 0x7f08045b

    .line 69
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->setGlobalTitle(Ljava/lang/CharSequence;)Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSearchIndexer:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    .line 73
    iput-boolean v7, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mFastScrollerVisibility:Z

    .line 76
    iput-boolean v6, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mGlobalSearchEnabled:Z

    .line 86
    new-instance v1, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v4, 0xf000000

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;-><init>(Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration$Provider;III)V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->bottomDividerDecoration:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    .line 89
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mClickListener:Lcom/vkcoffee/android/functions/VoidF1;

    .line 96
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Lcom/vkcoffee/android/functions/VoidF1Bool;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mCheckListener:Lcom/vkcoffee/android/functions/VoidF1Bool;

    .line 167
    const v1, 0x7f030090

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->setListLayoutId(I)V

    .line 168
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "friendsOrderNew"

    const-string/jumbo v3, "firstname"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "pref":Ljava/lang/String;
    const-string/jumbo v1, "hints"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iput v7, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->sortPref:I

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const-string/jumbo v1, "firstname"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    iput v6, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->sortPref:I

    goto :goto_0

    .line 173
    :cond_2
    const-string/jumbo v1, "lastname"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const/4 v1, 0x2

    iput v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->sortPref:I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Lcom/vkcoffee/android/functions/VoidF1Bool;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mCheckListener:Lcom/vkcoffee/android/functions/VoidF1Bool;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSelectedUsers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mClickListener:Lcom/vkcoffee/android/functions/VoidF1;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mMultiselectListener:Lcom/vkcoffee/android/functions/VoidF1;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    .prologue
    .line 46
    iget v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->scrW:I

    return v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSearchMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mBuildImportant:Z

    return v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    .prologue
    .line 46
    iget v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->scrW:I

    return v0
.end method

.method static synthetic access$802(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;
    .param p1, "x1"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    return-object p1
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$902(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method private restoreSelection(Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "savedData"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 245
    if-eqz p1, :cond_4

    .line 246
    const-string/jumbo v6, "selectedUsers"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 247
    .local v3, "selectedUsers":[I
    if-eqz v3, :cond_4

    .line 248
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSelectedUsers:Landroid/util/SparseArray;

    if-nez v6, :cond_0

    .line 249
    new-instance v6, Landroid/util/SparseArray;

    array-length v7, v3

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v6, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSelectedUsers:Landroid/util/SparseArray;

    .line 251
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_3

    .line 252
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 253
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    .line 254
    .local v2, "profile":Lcom/vkcoffee/android/UserProfile;
    iget v6, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    aget v7, v3, v0

    if-ne v6, v7, :cond_2

    .line 255
    iput-boolean v4, v2, Lcom/vkcoffee/android/UserProfile;->isSelected:Z

    .line 256
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSelectedUsers:Landroid/util/SparseArray;

    iget v7, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v6, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 251
    .end local v2    # "profile":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .restart local v2    # "profile":Lcom/vkcoffee/android/UserProfile;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 261
    .end local v1    # "j":I
    .end local v2    # "profile":Lcom/vkcoffee/android/UserProfile;
    :cond_3
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSelectedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 262
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->updateList()V

    .line 263
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mCheckListener:Lcom/vkcoffee/android/functions/VoidF1Bool;

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSelectedUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v6, v5, v4}, Lcom/vkcoffee/android/functions/VoidF1Bool;->f(Ljava/lang/Object;Z)V

    .line 268
    .end local v0    # "i":I
    .end local v3    # "selectedUsers":[I
    :goto_2
    return v4

    :cond_4
    move v4, v5

    goto :goto_2
.end method

.method private setFastScrollerVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 272
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mFastScrollerVisibility:Z

    .line 273
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->fastScroller:Lcom/vkcoffee/android/ui/recyclerview/FastScroller;

    if-eqz v0, :cond_0

    .line 274
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->fastScroller:Lcom/vkcoffee/android/ui/recyclerview/FastScroller;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->setVisibility(I)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 279
    :cond_2
    return-void

    .line 274
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method protected createAdapter()Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/fragments/base/SegmenterFragment",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">.GridAdapter<",
            "Lcom/vkcoffee/android/UserProfile;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 290
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$1;)V

    return-object v0
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->preloader:Lme/grishka/appkit/utils/Preloader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/grishka/appkit/utils/Preloader;->setMoreAvailable(Z)V

    .line 284
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/data/Friends;->reload(Z)V

    .line 286
    return-void
.end method

.method protected getColumnsCount()I
    .locals 4

    .prologue
    .line 295
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v2}, Lme/grishka/appkit/views/UsableRecyclerView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 296
    .local v1, "listWidth":I
    iget v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->scrW:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_0

    const/high16 v2, 0x43200000    # 160.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v0

    .line 297
    .local v0, "columnWidth":I
    :goto_0
    div-int v2, v1, v0

    return v2

    .end local v0    # "columnWidth":I
    :cond_0
    move v0, v1

    .line 296
    goto :goto_0
.end method

.method protected getSegmenter()Lcom/vkcoffee/android/ui/util/Segmenter;
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSearchIndexer:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mIndexer:Lcom/vkcoffee/android/ui/util/AlphabetSegmenter;

    goto :goto_0
.end method

.method synthetic lambda$new$352(Lcom/vkcoffee/android/UserProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSelectionListener:Lcom/vkcoffee/android/functions/VoidF1;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSelectionListener:Lcom/vkcoffee/android/functions/VoidF1;

    invoke-interface {v0, p1}, Lcom/vkcoffee/android/functions/VoidF1;->f(Ljava/lang/Object;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->openUserDetails(Lcom/vkcoffee/android/UserProfile;)V

    goto :goto_0
.end method

.method synthetic lambda$new$353(Lcom/vkcoffee/android/UserProfile;Z)V
    .locals 6
    .param p1, "profile"    # Lcom/vkcoffee/android/UserProfile;
    .param p2, "checked"    # Z

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mMultiselectListener:Lcom/vkcoffee/android/functions/VoidF1;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSelectedUsers:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSelectedUsers:Landroid/util/SparseArray;

    .line 101
    :cond_0
    if-eqz p2, :cond_3

    .line 102
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSelectedUsers:Landroid/util/SparseArray;

    iget v1, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSelectedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 108
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    if-nez v0, :cond_1

    .line 110
    new-instance v0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$2;-><init>(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 162
    :cond_2
    :goto_1
    return-void

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSelectedUsers:Landroid/util/SparseArray;

    iget v1, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 156
    :cond_4
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08046b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSelectedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 158
    :cond_5
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto :goto_1
.end method

.method synthetic lambda$setData$354(Lcom/vkcoffee/android/UserProfile;Lcom/vkcoffee/android/UserProfile;)I
    .locals 4
    .param p1, "lhs"    # Lcom/vkcoffee/android/UserProfile;
    .param p2, "rhs"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    const/16 v3, 0x20

    .line 307
    iget v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->sortPref:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 308
    iget-object v0, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    iget-object v1, p2, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 310
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method synthetic lambda$setData$355(Lcom/vkcoffee/android/UserProfile;)C
    .locals 3
    .param p1, "from"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    const/4 v2, 0x0

    .line 313
    iget v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->sortPref:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 314
    iget-object v0, p1, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 316
    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onCreate(Landroid/os/Bundle;)V

    .line 181
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->setRefreshEnabled(Z)V

    .line 182
    return-void
.end method

.method protected onCreateCardDecorator()Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .locals 6

    .prologue
    .line 186
    new-instance v0, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->isTablet:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {v0, v3, v2}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;-><init>(Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration$Provider;Z)V

    .line 188
    .local v0, "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    .line 189
    .local v1, "paddingTop":I
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->margin:I

    iget v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->padding:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->margin:I

    iget v5, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->padding:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->padding:I

    invoke-virtual {v2, v3, v1, v4, v5}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 190
    iget v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->padding:I

    iget v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->padding:I

    iget v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->padding:I

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;->setPadding(IIII)Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;

    .line 191
    return-object v0

    .line 186
    .end local v0    # "decorator":Lcom/vkcoffee/android/ui/recyclerview/CardItemDecoration;
    .end local v1    # "paddingTop":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "view":Landroid/view/View;
    iget v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->scrW:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_1

    .line 199
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->padding:I

    .line 206
    :goto_0
    iget v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->scrW:I

    const/16 v3, 0x39c

    if-lt v2, v3, :cond_0

    const/16 v1, 0x10

    iget v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->scrW:I

    add-int/lit16 v2, v2, -0x348

    add-int/lit8 v2, v2, -0x54

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->margin:I

    .line 207
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->bottomDividerDecoration:Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    iget v3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->margin:I

    iget v4, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->margin:I

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;->setPadding(II)Lcom/vkcoffee/android/ui/recyclerview/BottomDividerDecoration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 208
    return-object v0

    .line 200
    :cond_1
    iget v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->scrW:I

    const/16 v3, 0x1e0

    if-lt v2, v3, :cond_2

    .line 201
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->padding:I

    goto :goto_0

    .line 203
    :cond_2
    iput v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->padding:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 234
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 235
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSelectedUsers:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 236
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSelectedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 237
    .local v1, "selectedUsers":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSelectedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    aput v2, v1, v0

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_0
    const-string/jumbo v2, "selectedUsers"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 242
    .end local v0    # "i":I
    .end local v1    # "selectedUsers":[I
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 218
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 219
    const v0, 0x7f100207

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->fastScroller:Lcom/vkcoffee/android/ui/recyclerview/FastScroller;

    .line 220
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->fastScroller:Lcom/vkcoffee/android/ui/recyclerview/FastScroller;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const v0, 0x7f100208

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Lcom/vkcoffee/android/ui/recyclerview/FastScroller;->setup(Landroid/support/v7/widget/RecyclerView;Landroid/widget/TextView;)V

    .line 221
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSearchIndexer:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->attach(Landroid/support/v7/widget/RecyclerView;)V

    .line 222
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->updateList()V

    .line 223
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->loaded:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->dataLoaded()V

    .line 226
    :cond_0
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mFastScrollerVisibility:Z

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->setFastScrollerVisibility(Z)V

    .line 227
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->restoreSelection(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->restoreSelection(Landroid/os/Bundle;)Z

    .line 230
    :cond_1
    return-void
.end method

.method public openUserDetails(Lcom/vkcoffee/android/UserProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    .line 359
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget v1, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    .line 360
    return-void
.end method

.method public setData(Ljava/util/List;ZZZ)V
    .locals 7
    .param p2, "buildIndex"    # Z
    .param p3, "createImportantSection"    # Z
    .param p4, "isTablet"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/UserProfile;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 301
    iput-boolean v5, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSearchMode:Z

    .line 302
    iput-boolean p3, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mBuildImportant:Z

    .line 303
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 304
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 305
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mIndexer:Lcom/vkcoffee/android/ui/util/AlphabetSegmenter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/util/AlphabetSegmenter;->clear()V

    .line 306
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mIndexer:Lcom/vkcoffee/android/ui/util/AlphabetSegmenter;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;)Lcom/vkcoffee/android/ui/util/AlphabetSegmenter$Converter;

    move-result-object v3

    if-eqz p3, :cond_1

    .line 318
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_0
    if-eqz p2, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->sortPref:I

    if-eqz v1, :cond_0

    move v5, v6

    :cond_0
    iput-boolean v5, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mBuildIndex:Z

    move-object v1, p1

    .line 306
    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/ui/util/AlphabetSegmenter;->bind(Ljava/util/List;Ljava/util/Comparator;Lcom/vkcoffee/android/ui/util/AlphabetSegmenter$Converter;IZ)V

    .line 320
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSearchIndexer:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->clear()V

    .line 321
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSearchIndexer:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->bind(Ljava/util/List;)V

    .line 323
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mBuildIndex:Z

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->setFastScrollerVisibility(Z)V

    .line 324
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->getAdapter()Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mIndexer:Lcom/vkcoffee/android/ui/util/AlphabetSegmenter;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;->setData(Lcom/vkcoffee/android/ui/util/Segmenter;)Lcom/vkcoffee/android/fragments/base/SegmenterFragment$GridAdapter;

    .line 325
    iput-boolean v6, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->loaded:Z

    .line 326
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    if-nez v0, :cond_2

    .line 332
    :goto_1
    return-void

    :cond_1
    move v4, v5

    .line 318
    goto :goto_0

    .line 329
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->updateList()V

    .line 330
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->dataLoaded()V

    .line 331
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->refreshDone()V

    goto :goto_1
.end method

.method public setGlobalSearch(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mGlobalSearchEnabled:Z

    .line 364
    return-void
.end method

.method public setMultiselectListener(Lcom/vkcoffee/android/functions/VoidF1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "multiselectListener":Lcom/vkcoffee/android/functions/VoidF1;, "Lcom/vkcoffee/android/functions/VoidF1<Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mMultiselectListener:Lcom/vkcoffee/android/functions/VoidF1;

    .line 368
    return-void
.end method

.method public setSelectionListener(Lcom/vkcoffee/android/functions/VoidF1;)Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;
    .locals 0
    .param p1    # Lcom/vkcoffee/android/functions/VoidF1;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)",
            "Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, "l":Lcom/vkcoffee/android/functions/VoidF1;, "Lcom/vkcoffee/android/functions/VoidF1<Lcom/vkcoffee/android/UserProfile;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSelectionListener:Lcom/vkcoffee/android/functions/VoidF1;

    .line 336
    return-object p0
.end method

.method public updateFilter(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 341
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSearchMode:Z

    if-nez v0, :cond_0

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSearchMode:Z

    .line 343
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->updateDecorator()V

    .line 344
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->updateList()V

    .line 345
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->setFastScrollerVisibility(Z)V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSearchIndexer:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mGlobalSearchEnabled:Z

    invoke-virtual {v0, p1, v1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->search(Ljava/lang/String;Z)V

    .line 356
    :cond_1
    :goto_0
    return-void

    .line 349
    :cond_2
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSearchMode:Z

    if-eqz v0, :cond_1

    .line 350
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mSearchMode:Z

    .line 351
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->updateDecorator()V

    .line 352
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->updateList()V

    .line 353
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->mBuildIndex:Z

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/friends/FriendsListFragment;->setFastScrollerVisibility(Z)V

    goto :goto_0
.end method
