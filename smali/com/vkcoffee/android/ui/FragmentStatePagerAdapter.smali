.class public abstract Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;
.super Lcom/vkcoffee/android/ui/PagerAdapter;
.source "FragmentStatePagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentStatePagerAdapter"


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 2
    .param p1, "fm"    # Landroid/app/FragmentManager;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/PagerAdapter;-><init>()V

    .line 72
    iput-object v1, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    .line 76
    iput-object v1, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 79
    iput-object p1, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 80
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 131
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    move-object v1, v0

    .line 133
    .local v1, "fragment":Landroid/app/Fragment;
    iget-object v2, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 140
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, p2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    .end local v1    # "fragment":Landroid/app/Fragment;
    :catch_0
    move-exception v2

    .line 151
    :goto_1
    return-void

    .line 143
    .restart local v1    # "fragment":Landroid/app/Fragment;
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_2

    .line 144
    iget-object v2, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3, v1}, Landroid/app/FragmentManager;->saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v2, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 172
    iget-object v0, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 174
    :cond_0
    return-void
.end method

.method public abstract getItem(I)Landroid/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 7
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 97
    iget-object v3, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p2, :cond_0

    .line 98
    iget-object v3, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 99
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 125
    .end local v0    # "f":Landroid/app/Fragment;
    :goto_0
    return-object v0

    .line 104
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v3, :cond_1

    .line 105
    iget-object v3, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 108
    :cond_1
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v1

    .line 112
    .local v1, "fragment":Landroid/app/Fragment;
    iget-object v3, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p2, :cond_2

    .line 113
    iget-object v3, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment$SavedState;

    .line 114
    .local v2, "fss":Landroid/app/Fragment$SavedState;
    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setInitialSavedState(Landroid/app/Fragment$SavedState;)V

    .line 118
    .end local v2    # "fss":Landroid/app/Fragment$SavedState;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p2, :cond_3

    .line 119
    iget-object v3, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    :cond_3
    iget-object v3, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v3, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "page"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-object v0, v1

    .line 125
    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 178
    check-cast p2, Landroid/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 11
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 205
    if-eqz p1, :cond_4

    move-object v0, p1

    .line 206
    check-cast v0, Landroid/os/Bundle;

    .line 207
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 208
    const-string/jumbo v7, "states"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 209
    .local v2, "fss":[Landroid/os/Parcelable;
    iget-object v7, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 210
    iget-object v7, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 211
    if-eqz v2, :cond_0

    .line 212
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_0

    .line 213
    iget-object v8, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    aget-object v7, v2, v3

    check-cast v7, Landroid/app/Fragment$SavedState;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 217
    .local v6, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 218
    .local v5, "key":Ljava/lang/String;
    const-string/jumbo v8, "f"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 219
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 220
    .local v4, "index":I
    iget-object v8, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v8, v0, v5}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 221
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_3

    .line 222
    :goto_2
    iget-object v8, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v8, v4, :cond_2

    .line 223
    iget-object v8, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 225
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 226
    iget-object v8, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v8, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 228
    :cond_3
    const-string/jumbo v8, "FragmentStatePagerAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Bad fragment at key "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 233
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "f":Landroid/app/Fragment;
    .end local v2    # "fss":[Landroid/os/Parcelable;
    .end local v4    # "index":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 183
    const/4 v4, 0x0

    .line 184
    .local v4, "state":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 185
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "state":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 186
    .restart local v4    # "state":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v1, v5, [Landroid/app/Fragment$SavedState;

    .line 187
    .local v1, "fss":[Landroid/app/Fragment$SavedState;
    iget-object v5, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 188
    const-string/jumbo v5, "states"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 190
    .end local v1    # "fss":[Landroid/app/Fragment$SavedState;
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 191
    iget-object v5, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 192
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    .line 193
    if-nez v4, :cond_1

    .line 194
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "state":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 196
    .restart local v4    # "state":Landroid/os/Bundle;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkcoffee/android/ui/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v5, v4, v3, v0}, Landroid/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 190
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_3
    return-object v4
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 89
    return-void
.end method
