.class public abstract Landroid/support/v7/preference/PreferenceDialogFragmentCompat;
.super Landroid/support/v4/app/DialogFragment;
.source "PreferenceDialogFragmentCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field protected static final ARG_KEY:Ljava/lang/String; = "key"


# instance fields
.field private mPreference:Landroid/support/v7/preference/DialogPreference;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 127
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 128
    return-void
.end method


# virtual methods
.method public getPreference()Landroid/support/v7/preference/DialogPreference;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPreference:Landroid/support/v7/preference/DialogPreference;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 156
    const v3, 0x102000b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 158
    .local v0, "dialogMessageView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 159
    iget-object v3, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 160
    .local v1, "message":Ljava/lang/CharSequence;
    const/16 v2, 0x8

    .line 162
    .local v2, "newVisibility":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 164
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_0
    const/4 v2, 0x0

    .line 170
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 171
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .end local v1    # "message":Ljava/lang/CharSequence;
    .end local v2    # "newVisibility":I
    :cond_2
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 178
    iput p2, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    .line 179
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 49
    .local v2, "rawFragment":Landroid/support/v4/app/Fragment;
    instance-of v3, v2, Landroid/support/v7/preference/DialogPreference$TargetFragment;

    if-nez v3, :cond_0

    .line 50
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Target fragment must implement TargetFragment interface"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v0, v2

    .line 54
    check-cast v0, Landroid/support/v7/preference/DialogPreference$TargetFragment;

    .line 57
    .local v0, "fragment":Landroid/support/v7/preference/DialogPreference$TargetFragment;
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "key"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/support/v7/preference/DialogPreference$TargetFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/DialogPreference;

    iput-object v3, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPreference:Landroid/support/v7/preference/DialogPreference;

    .line 59
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 64
    .local v2, "context":Landroid/content/Context;
    const/4 v4, -0x2

    iput v4, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    .line 66
    new-instance v4, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v4, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v5}, Landroid/support/v7/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 72
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {p0, v2}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 73
    .local v1, "contentView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 80
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroid/support/v7/app/AlertDialog$Builder;)V

    .line 83
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 84
    .local v3, "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->needInputMethod()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    invoke-direct {p0, v3}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->requestInputMethod(Landroid/app/Dialog;)V

    .line 89
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 77
    .end local v3    # "dialog":Landroid/app/Dialog;
    :cond_1
    iget-object v4, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v4}, Landroid/support/v7/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method protected onCreateDialogView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v3, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mPreference:Landroid/support/v7/preference/DialogPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/DialogPreference;->getDialogLayoutResource()I

    move-result v1

    .line 140
    .local v1, "resId":I
    if-nez v1, :cond_0

    .line 145
    :goto_0
    return-object v2

    .line 144
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 145
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public abstract onDialogClosed(Z)V
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 184
    iget v0, p0, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceDialogFragmentCompat;->onDialogClosed(Z)V

    .line 185
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/support/v7/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroid/support/v7/app/AlertDialog$Builder;

    .prologue
    .line 110
    return-void
.end method
