.class public Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;
.super Landroid/support/v14/preference/PreferenceDialogFragment;
.source "MultiSelectListPreferenceDialogFragment.java"


# instance fields
.field private mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$076(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iget-boolean v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    return v0
.end method

.method static synthetic access$100(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    .prologue
    .line 26
    iget-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    return-object v0
.end method

.method private getListPreference()Landroid/support/v14/preference/MultiSelectListPreference;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/MultiSelectListPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v1, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    invoke-direct {v1}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;-><init>()V

    .line 34
    .local v1, "fragment":Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 35
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v1
.end method


# virtual methods
.method public onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->getListPreference()Landroid/support/v14/preference/MultiSelectListPreference;

    move-result-object v0

    .line 76
    .local v0, "preference":Landroid/support/v14/preference/MultiSelectListPreference;
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    if-eqz v2, :cond_0

    .line 77
    iget-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    .line 78
    .local v1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/MultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 82
    .end local v1    # "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    .line 83
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 48
    invoke-direct {p0}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->getListPreference()Landroid/support/v14/preference/MultiSelectListPreference;

    move-result-object v1

    .line 50
    .local v1, "preference":Landroid/support/v14/preference/MultiSelectListPreference;
    invoke-virtual {v1}, Landroid/support/v14/preference/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/support/v14/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    .line 51
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_1
    invoke-virtual {v1}, Landroid/support/v14/preference/MultiSelectListPreference;->getSelectedItems()[Z

    move-result-object v0

    .line 57
    .local v0, "checkedItems":[Z
    invoke-virtual {v1}, Landroid/support/v14/preference/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;

    invoke-direct {v3, p0, v1}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;-><init>(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;Landroid/support/v14/preference/MultiSelectListPreference;)V

    invoke-virtual {p1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    iget-object v2, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 70
    iget-object v2, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/support/v14/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 71
    return-void
.end method
