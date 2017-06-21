.class public final Landroid/support/v7/preference/PreferenceScreen;
.super Landroid/support/v7/preference/PreferenceGroup;
.source "PreferenceScreen.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    sget v0, Landroid/support/v7/preference/R$attr;->preferenceScreenStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method


# virtual methods
.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getOnNavigateToScreenListener()Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;

    move-result-object v0

    .line 92
    .local v0, "listener":Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;
    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0, p0}, Landroid/support/v7/preference/PreferenceManager$OnNavigateToScreenListener;->onNavigateToScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    goto :goto_0
.end method
