.class public Landroid/support/v7/preference/PreferenceGroupAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/preference/PreferenceViewHolder;",
        ">;",
        "Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceGroupAdapter"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private volatile mIsSyncing:Z

.field private mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mPreferenceLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceListInternal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRunnable:Ljava/lang/Runnable;

.field private mTempPreferenceLayout:Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;


# direct methods
.method public constructor <init>(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 2
    .param p1, "preferenceGroup"    # Landroid/support/v7/preference/PreferenceGroup;

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 65
    new-instance v0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Landroid/support/v7/preference/PreferenceGroupAdapter$1;)V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Landroid/support/v7/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/PreferenceGroupAdapter$1;-><init>(Landroid/support/v7/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    .line 104
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 106
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceGroup;->setOnPreferenceChangeInternalListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->setHasStableIds(Z)V

    .line 114
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    .line 115
    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/preference/PreferenceGroupAdapter;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/preference/PreferenceGroupAdapter;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method private addPreferenceClassName(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 182
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v0

    .line 183
    .local v0, "pl":Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_0
    return-void
.end method

.method private createPreferenceLayout(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "in"    # Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .prologue
    .line 174
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 175
    .local v0, "pl":Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$202(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getLayoutResource()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$302(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    .line 177
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getWidgetLayoutResource()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$402(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    .line 178
    return-object v0

    .line 174
    .end local v0    # "pl":Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    :cond_0
    new-instance v0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Landroid/support/v7/preference/PreferenceGroupAdapter$1;)V

    goto :goto_0
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 5
    .param p2, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;",
            "Landroid/support/v7/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    invoke-virtual {p2}, Landroid/support/v7/preference/PreferenceGroup;->sortPreferences()V

    .line 149
    invoke-virtual {p2}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 150
    .local v0, "groupSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 151
    invoke-virtual {p2, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 153
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-direct {p0, v2}, Landroid/support/v7/preference/PreferenceGroupAdapter;->addPreferenceClassName(Landroid/support/v7/preference/Preference;)V

    .line 157
    instance-of v4, v2, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 158
    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    .line 159
    .local v3, "preferenceAsGroup":Landroid/support/v7/preference/PreferenceGroup;
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    invoke-direct {p0, p1, v3}, Landroid/support/v7/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V

    .line 164
    .end local v3    # "preferenceAsGroup":Landroid/support/v7/preference/PreferenceGroup;
    :cond_0
    invoke-virtual {v2, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeInternalListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v2    # "preference":Landroid/support/v7/preference/Preference;
    :cond_1
    return-void
.end method

.method private syncMyPreferences()V
    .locals 5

    .prologue
    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget-boolean v3, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    if-eqz v3, :cond_0

    .line 120
    monitor-exit p0

    .line 144
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 124
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .local v1, "newPreferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    iget-object v3, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v1, v3}, Landroid/support/v7/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V

    .line 128
    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    .line 130
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 132
    iget-object v3, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    .line 133
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    iget-object v3, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 124
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "newPreferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    .end local v2    # "preference":Landroid/support/v7/preference/Preference;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 138
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "newPreferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 140
    monitor-enter p0

    .line 141
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 143
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method


# virtual methods
.method public getItem(I)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 194
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 199
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 200
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->getItem(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->getItem(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 250
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 252
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 276
    invoke-virtual {p0, p2}, Landroid/support/v7/preference/PreferenceGroupAdapter;->getItem(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 277
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 278
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Landroid/support/v7/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/preference/PreferenceViewHolder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 257
    iget-object v4, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 258
    .local v1, "pl":Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 260
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-static {v1}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$300(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 262
    .local v2, "view":Landroid/view/View;
    const v4, 0x1020018

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 263
    .local v3, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 264
    invoke-static {v1}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$400(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    invoke-static {v1}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$400(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 271
    :cond_0
    :goto_0
    new-instance v4, Landroid/support/v7/preference/PreferenceViewHolder;

    invoke-direct {v4, v2}, Landroid/support/v7/preference/PreferenceViewHolder;-><init>(Landroid/view/View;)V

    return-object v4

    .line 267
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/preference/PreferenceGroupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/preference/PreferenceViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 205
    return-void
.end method

.method public onPreferenceHierarchyChange(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 208
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method

.method public onPreferenceVisibilityChange(Landroid/support/v7/preference/Preference;)V
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 214
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 218
    const/4 v3, -0x1

    .line 219
    .local v3, "previousVisibleIndex":I
    iget-object v5, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    .line 220
    .local v2, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 228
    .end local v2    # "pref":Landroid/support/v7/preference/Preference;
    :cond_1
    iget-object v5, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v5, v6, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 230
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Landroid/support/v7/preference/PreferenceGroupAdapter;->notifyItemInserted(I)V

    .line 244
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "previousVisibleIndex":I
    :goto_1
    return-void

    .line 223
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "pref":Landroid/support/v7/preference/Preference;
    .restart local v3    # "previousVisibleIndex":I
    :cond_2
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "pref":Landroid/support/v7/preference/Preference;
    .end local v3    # "previousVisibleIndex":I
    :cond_3
    iget-object v5, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 236
    .local v1, "listSize":I
    const/4 v4, 0x0

    .local v4, "removalIndex":I
    :goto_2
    if-ge v4, v1, :cond_4

    .line 237
    iget-object v5, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 241
    :cond_4
    iget-object v5, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 242
    invoke-virtual {p0, v4}, Landroid/support/v7/preference/PreferenceGroupAdapter;->notifyItemRemoved(I)V

    goto :goto_1

    .line 236
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
