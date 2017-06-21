.class public Landroid/support/v14/preference/EditTextPreferenceDialogFragment;
.super Landroid/support/v14/preference/PreferenceDialogFragment;
.source "EditTextPreferenceDialogFragment.java"


# instance fields
.field private mEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;-><init>()V

    return-void
.end method

.method private getEditTextPreference()Landroid/support/v7/preference/EditTextPreference;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/support/v14/preference/EditTextPreferenceDialogFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v1, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;

    invoke-direct {v1}, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;-><init>()V

    .line 31
    .local v1, "fragment":Landroid/support/v14/preference/EditTextPreferenceDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 32
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    return-object v1
.end method


# virtual methods
.method protected needInputMethod()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    .line 41
    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 43
    iget-object v0, p0, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Dialog view must contain an EditText with id @android:id/edit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iget-object v0, p0, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;->getEditTextPreference()Landroid/support/v7/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    iget-object v1, p0, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0}, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;->getEditTextPreference()Landroid/support/v7/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/EditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-direct {p0}, Landroid/support/v14/preference/EditTextPreferenceDialogFragment;->getEditTextPreference()Landroid/support/v7/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 71
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method
