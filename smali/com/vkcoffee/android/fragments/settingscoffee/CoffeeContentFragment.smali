.class public Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeContentFragment;
.super Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;
.source "CoffeeContentFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeContentFragment;->addPreferencesFromResource(I)V

    .line 22
    const-string v0, "photoRev"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeContentFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeContentFragment$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeContentFragment$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeContentFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 37
    return-void
.end method
