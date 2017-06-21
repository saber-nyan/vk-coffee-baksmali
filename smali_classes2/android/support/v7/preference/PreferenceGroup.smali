.class public abstract Landroid/support/v7/preference/PreferenceGroup;
.super Landroid/support/v7/preference/Preference;
.source "PreferenceGroup.java"


# instance fields
.field private mAttachedToHierarchy:Z

.field private mCurrentPreferenceOrder:I

.field private mOrderingAsAdded:Z

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    iput-boolean v3, p0, Landroid/support/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 54
    iput v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    .line 56
    iput-boolean v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 63
    sget-object v1, Landroid/support/v7/preference/R$styleable;->PreferenceGroup:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v7/preference/R$styleable;->PreferenceGroup_orderingFromXml:I

    sget v2, Landroid/support/v7/preference/R$styleable;->PreferenceGroup_orderingFromXml:I

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    return-void
.end method

.method private removePreferenceInt(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 193
    monitor-enter p0

    .line 194
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->onPrepareForRemoval()V

    .line 195
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addItemFromInflater(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 111
    return-void
.end method

.method public addPreference(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 139
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 177
    :goto_0
    return v1

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v1

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_2

    .line 145
    iget-boolean v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    if-eqz v1, :cond_1

    .line 146
    iget v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroid/support/v7/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 149
    :cond_1
    instance-of v1, p1, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 152
    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    iget-boolean v3, p0, Landroid/support/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 156
    :cond_2
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 157
    .local v0, "insertionIndex":I
    if-gez v0, :cond_3

    .line 158
    mul-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v1, -0x1

    .line 161
    :cond_3
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceGroup;->onPrepareAddPreference(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 162
    const/4 v1, 0x0

    goto :goto_0

    .line 165
    :cond_4
    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 167
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V

    .line 171
    iget-boolean v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    if-eqz v1, :cond_5

    .line 172
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->onAttached()V

    .line 175
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->notifyHierarchyChanged()V

    move v1, v2

    .line 177
    goto :goto_0

    .line 167
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 326
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 329
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 330
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 331
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 318
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 319
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 320
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_0
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .locals 6
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 258
    .end local p0    # "this":Landroid/support/v7/preference/PreferenceGroup;
    :goto_0
    return-object p0

    .line 240
    .restart local p0    # "this":Landroid/support/v7/preference/PreferenceGroup;
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 241
    .local v3, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 242
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 243
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "curKey":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object p0, v2

    .line 246
    goto :goto_0

    .line 249
    :cond_1
    instance-of v5, v2, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v5, :cond_2

    .line 250
    check-cast v2, Landroid/support/v7/preference/PreferenceGroup;

    .end local v2    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v2, p1}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 252
    .local v4, "returnedPreference":Landroid/support/v7/preference/Preference;
    if-eqz v4, :cond_2

    move-object p0, v4

    .line 253
    goto :goto_0

    .line 241
    .end local v4    # "returnedPreference":Landroid/support/v7/preference/Preference;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 258
    .end local v0    # "curKey":Ljava/lang/String;
    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getPreference(I)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method public getPreferenceCount()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public isOrderingAsAdded()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    return v0
.end method

.method public notifyDependencyChange(Z)V
    .locals 3
    .param p1, "disableDependents"    # Z

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->notifyDependencyChange(Z)V

    .line 301
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 302
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 303
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Landroid/support/v7/preference/Preference;->onParentChanged(Landroid/support/v7/preference/Preference;Z)V

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 3

    .prologue
    .line 274
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onAttached()V

    .line 278
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v7/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 281
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 282
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 283
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->onAttached()V

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_0
    return-void
.end method

.method protected onPrepareAddPreference(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/preference/Preference;->onParentChanged(Landroid/support/v7/preference/Preference;Z)V

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onPrepareForRemoval()V

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 293
    return-void
.end method

.method public removeAll()V
    .locals 3

    .prologue
    .line 203
    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 205
    .local v1, "preferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 206
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v2}, Landroid/support/v7/preference/PreferenceGroup;->removePreferenceInt(Landroid/support/v7/preference/Preference;)Z

    .line 205
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 208
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 210
    return-void

    .line 208
    .end local v0    # "i":I
    .end local v1    # "preferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removePreference(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Landroid/support/v7/preference/PreferenceGroup;->removePreferenceInt(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    .line 188
    .local v0, "returnValue":Z
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 189
    return v0
.end method

.method public setOrderingAsAdded(Z)V
    .locals 0
    .param p1, "orderingAsAdded"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Landroid/support/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 94
    return-void
.end method

.method sortPreferences()V
    .locals 1

    .prologue
    .line 308
    monitor-enter p0

    .line 309
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 310
    monitor-exit p0

    .line 311
    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
