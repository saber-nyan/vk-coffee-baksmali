.class public Lcom/vkcoffee/android/ui/MultiSelectListPreference;
.super Landroid/preference/ListPreference;
.source "MultiSelectListPreference.java"


# static fields
.field private static final DEFAULT_SEPARATOR:Ljava/lang/String; = ";"


# instance fields
.field private entryChecked:[Z

.field private separator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->entryChecked:[Z

    .line 25
    const-string/jumbo v0, ";"

    iput-object v0, p0, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->separator:Ljava/lang/String;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/MultiSelectListPreference;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/MultiSelectListPreference;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->entryChecked:[Z

    return-object v0
.end method

.method protected static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "oIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 163
    .end local v1    # "oIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    const-string/jumbo v2, ""

    .line 169
    :goto_0
    return-object v2

    .line 165
    .restart local v1    # "oIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "oBuilder":Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 169
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private prepareSummary(Ljava/util/List;)Ljava/lang/CharSequence;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "joined":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v3, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 112
    .local v0, "entryTitle":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 113
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 114
    .local v2, "ix":I
    array-length v7, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v4, v1, v6

    .line 115
    .local v4, "value":Ljava/lang/CharSequence;
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    aget-object v5, v0, v2

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 114
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 120
    .end local v4    # "value":Ljava/lang/CharSequence;
    :cond_1
    const-string/jumbo v5, ", "

    invoke-static {v3, v5}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private restoreCheckedEntries()V
    .locals 7

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 73
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->unpack(Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 75
    .local v3, "vals":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 76
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 77
    .local v4, "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 78
    aget-object v0, v1, v2

    .line 79
    .local v0, "entry":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->entryChecked:[Z

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    aput-boolean v6, v5, v2

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "entry":Ljava/lang/CharSequence;
    .end local v2    # "i":I
    .end local v4    # "valuesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_0
    return-void
.end method

.method private setValueAndEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->unpack(Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method private unpack(Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 1
    .param p1, "val"    # Ljava/lang/CharSequence;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 56
    .end local p1    # "val":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .restart local p1    # "val":Ljava/lang/CharSequence;
    :cond_1
    check-cast p1, Ljava/lang/String;

    .end local p1    # "val":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getCheckedValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->unpack(Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 7
    .param p1, "positiveResult"    # Z

    .prologue
    .line 86
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 89
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 90
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 91
    iget-object v5, p0, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->entryChecked:[Z

    aget-boolean v5, v5, v1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 92
    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/String;

    .line 93
    .local v2, "val":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v2    # "val":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_1
    iget-object v5, p0, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->separator:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "value":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->prepareSummary(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    invoke-direct {p0, v3}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->setValueAndEvent(Ljava/lang/String;)V

    .line 101
    .end local v1    # "i":I
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 125
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 5
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 35
    .local v0, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 36
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    array-length v3, v0

    array-length v4, v1

    if-eq v3, v4, :cond_1

    .line 38
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "MultiSelectListPreference requires an entries array and an entryValues array which are both the same length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 43
    :cond_1
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->restoreCheckedEntries()V

    .line 44
    new-instance v2, Lcom/vkcoffee/android/ui/MultiSelectListPreference$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/ui/MultiSelectListPreference$1;-><init>(Lcom/vkcoffee/android/ui/MultiSelectListPreference;)V

    .line 49
    .local v2, "listener":Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    iget-object v3, p0, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->entryChecked:[Z

    invoke-virtual {p1, v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 5
    .param p1, "restoreValue"    # Z
    .param p2, "rawDefaultValue"    # Ljava/lang/Object;

    .prologue
    .line 131
    const/4 v3, 0x0

    .line 133
    .local v3, "value":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 134
    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/CharSequence;

    .line 138
    .end local p2    # "rawDefaultValue":Ljava/lang/Object;
    .local v0, "defaultValue":[Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 139
    .local v1, "joined":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v4, p0, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->separator:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "joinedDefaultValue":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    :goto_1
    invoke-direct {p0, v3}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->unpack(Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->prepareSummary(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    invoke-direct {p0, v3}, Lcom/vkcoffee/android/ui/MultiSelectListPreference;->setValueAndEvent(Ljava/lang/String;)V

    .line 148
    return-void

    .line 136
    .end local v0    # "defaultValue":[Ljava/lang/CharSequence;
    .end local v1    # "joined":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v2    # "joinedDefaultValue":Ljava/lang/String;
    .restart local p2    # "rawDefaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, [Ljava/lang/CharSequence;

    .end local p2    # "rawDefaultValue":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [Ljava/lang/CharSequence;

    .restart local v0    # "defaultValue":[Ljava/lang/CharSequence;
    goto :goto_0

    .line 143
    .restart local v1    # "joined":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v2    # "joinedDefaultValue":Ljava/lang/String;
    :cond_1
    move-object v3, v2

    goto :goto_1
.end method
