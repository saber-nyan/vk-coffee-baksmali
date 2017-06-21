.class public Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;
.super Landroid/support/v7/preference/PreferenceDialogFragmentCompat;
.source "ListPreferenceDialogFragmentCompat.java"


# instance fields
.field private mClickedDialogEntryIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getListPreference()Landroid/support/v7/preference/ListPreference;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v1, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;

    invoke-direct {v1}, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;-><init>()V

    .line 30
    .local v1, "fragment":Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 31
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->setArguments(Landroid/os/Bundle;)V

    .line 33
    return-object v1
.end method


# virtual methods
.method public onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->getListPreference()Landroid/support/v7/preference/ListPreference;

    move-result-object v0

    .line 78
    .local v0, "preference":Landroid/support/v7/preference/ListPreference;
    if-eqz p1, :cond_0

    iget v2, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    if-ltz v2, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    aget-object v2, v2, v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 85
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/support/v7/app/AlertDialog$Builder;)V
    .locals 5
    .param p1, "builder"    # Landroid/support/v7/app/AlertDialog$Builder;

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroid/support/v7/app/AlertDialog$Builder;)V

    .line 44
    invoke-direct {p0}, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->getListPreference()Landroid/support/v7/preference/ListPreference;

    move-result-object v0

    .line 46
    .local v0, "preference":Landroid/support/v7/preference/ListPreference;
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    .line 47
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    .line 52
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    new-instance v3, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat$1;

    invoke-direct {v3, p0}, Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat$1;-><init>(Landroid/support/v7/preference/ListPreferenceDialogFragmentCompat;)V

    invoke-virtual {p1, v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {p1, v4, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 73
    return-void
.end method
