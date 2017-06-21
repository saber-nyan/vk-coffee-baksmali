.class public Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;
.super Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;
.source "CoffeeMenuFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f060019

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->addPreferencesFromResource(I)V

    .line 29
    const-string v0, "warn"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "<center><b>\u041f\u043e\u0441\u043b\u0435 \u0438\u0437\u043c\u0435\u043d\u0435\u043d\u0438\u044f \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043a \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u0431\u0443\u0434\u0435\u0442 \u043f\u0435\u0440\u0435\u0437\u0430\u043f\u0443\u0449\u0435\u043d\u043e.</b></center>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 30
    const-string v0, "NEWS"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "NEWS"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/MenuListView;->getIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 31
    const-string v0, "NEWS"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$1;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 43
    const-string v0, "FEEDBACK"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "FEEDBACK"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/MenuListView;->getIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 44
    const-string v0, "FEEDBACK"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$2;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 56
    const-string v0, "DIALOGS"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "DIALOGS"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/MenuListView;->getIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 57
    const-string v0, "DIALOGS"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$3;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$3;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    const-string v0, "FRIENDS"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "FRIENDS"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/MenuListView;->getIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 70
    const-string v0, "FRIENDS"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$4;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$4;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 82
    const-string v0, "GROUPS"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "GROUPS"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/MenuListView;->getIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 83
    const-string v0, "GROUPS"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$5;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$5;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    const-string v0, "PHOTOS"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "PHOTOS"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/MenuListView;->getIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 96
    const-string v0, "PHOTOS"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$6;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$6;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    const-string v0, "VIDEOS"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "VIDEOS"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/MenuListView;->getIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 109
    const-string v0, "VIDEOS"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$7;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$7;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    const-string v0, "AUDIOS"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "AUDIOS"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/MenuListView;->getIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 122
    const-string v0, "AUDIOS"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$8;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$8;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 134
    const-string v0, "GAMES"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "GAMES"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/MenuListView;->getIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 135
    const-string v0, "GAMES"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$9;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$9;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    const-string v0, "FAVE"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "FAVE"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/MenuListView;->getIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 148
    const-string v0, "FAVE"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$10;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$10;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    const-string v0, "SEARCH"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "SEARCH"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/MenuListView;->getIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 161
    const-string v0, "SEARCH"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$11;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$11;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    const-string v0, "OFFLINE"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "OFFLINE"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/MenuListView;->getIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 187
    const-string v0, "OFFLINE"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$12;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$12;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    const-string v0, "UNREAD"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "UNREAD"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/MenuListView;->getIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 200
    const-string v0, "UNREAD"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$13;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$13;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    const-string v0, "UNTYPING"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "UNTYPING"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/MenuListView;->getIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 213
    const-string v0, "UNTYPING"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$14;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$14;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 225
    const-string v0, "CLOSE"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "CLOSE"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/MenuListView;->getIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 226
    const-string v0, "CLOSE"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$15;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$15;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 238
    invoke-static {}, Lcom/vkcoffee/android/PinCodeData;->pinCode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    const-string v0, "PIN"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 241
    :cond_0
    const-string v0, "PIN"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const-string v1, "PIN"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/MenuListView;->getIcon(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 242
    const-string v0, "PIN"

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$16;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment$16;-><init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeMenuFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 253
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onDestroy()V

    .line 258
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->changedPos()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->clearChangedPos()V

    .line 260
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->reCount()V

    .line 261
    invoke-static {}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->doRestart()V

    .line 264
    :cond_0
    return-void
.end method
